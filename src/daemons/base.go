package daemons

import (
	"time"
	"strings"
	"sqlx"
	"helpers"
	"go-bittrex"
	"go-poloniex"
	"fmt"
	"math"
	"go-yobit"
	"go-hitbtc"
	"config"
)

func Worker(cfg config.Settings, db *sqlx.DB, b *bittrex.Bittrex, p *poloniex.Poloniex, yo *yobit.Yobit, hit *hitbtc.HitBtc, pairs []config.DBPair)  {
	singals := helpers.InitSignals(db)

	maindata := make([]config.CD, 0)

	bit, eb := b.GetMarketSummaries()
	if eb != nil {
		fmt.Println("CMS Битрикс не желает работать:", eb.Error())
	} else {
		ex := "bittrex"
		for _, v := range bit {
			data := config.CD{}
			name := strings.ToLower(v.MarketName)
			name1 := strings.Replace(name, "-", "", -1)

			names := strings.Split(name, "-")
			data.Pair1 = names[0]
			data.Pair2 = names[1]

			bid, _ := v.High.Float64()
			ask, _ := v.Low.Float64()
			data.Bid = bid
			data.Ask = ask
			data.Volume = v.Volume.String()
			data.Pair = name1
			data.DelimPair = name
			data.Market = ex
			maindata = append(maindata, data)
			//go helpers.SaveTickers(db, ex, name, v.Last.String(), v.High.String(), v.Low.String(), time.Now().Format(time.RFC3339), v.Volume.String())
		}
	}

	pol, ep := p.GetTickers()
	if ep != nil {
		fmt.Println("Полоникс наполонил: ", ep.Error())
	} else {
		ex := "poloniex"
		for k, v := range pol {
			data := config.CD{}

			name := strings.ToLower(strings.Replace(k, "_", "-", -1))
			name1 := strings.Replace(name, "-", "", -1)

			names := strings.Split(name, "-")
			data.Pair1 = names[0]
			data.Pair2 = names[1]

			bid, _ := v.HighestBid.Float64()
			ask, _ := v.LowestAsk.Float64()
			data.Bid = bid
			data.Ask = ask
			data.Volume = v.BaseVolume.String()
			data.Pair = name1
			data.DelimPair = name
			data.Market = ex
			maindata = append(maindata, data)

			//go helpers.SaveTickers(db, ex, name, v.Last.String(), v.HighestBid.String(), v.LowestAsk.String(), time.Now().Format(time.RFC3339), v.BaseVolume.String())
		}
	}

	a, _ := hit.GetTickers()
	if len(a) > 0 {
		ex := "hitbtc"
		for _, v := range a {
			data := config.CD{}

			data.Bid = v.Bid
			data.Ask = v.Ask
			data.Volume = helpers.FloatToString(v.Volume)
			data.Pair = v.Symbol
			data.Pair1, data.Pair2 = helpers.GetPairFromString(v.Symbol, pairs)
			data.Market = ex
			maindata = append(maindata, data)
		}
	}

	if cfg.Yobit {
		y, _ := yo.GetTickers()
		if len(y) > 0 {
			var tickers [][]string
			var tempticks []string
			var i = 0
			var kk = 1
			for k := range y {
				if i >= 50 {
					tickers = append(tickers, tempticks)
					tempticks = []string{}
					i = 0
				} else {
					tempticks = append(tempticks, k)
					i++
				}
				kk++
			}
			yoba := helpers.Yobit(yo)

			ex := "yobit"
			for k, v := range yoba {
				data := config.CD{}

				name := strings.Replace(k, "_", "-", -1)
				name1 := strings.Replace(name, "-", "", -1)
				names := strings.Split(name, "-")

				data.Pair1 = names[0]
				data.Pair2 = names[1]

				data.Bid = v.High
				data.Ask = v.Low
				data.Volume = helpers.FloatToString(v.VolCur)
				data.Pair = name1
				data.DelimPair = name
				data.Market = ex
				maindata = append(maindata, data)
			}
		}
	}


	//maindata = helpers.CheckPairs(maindata, pairs)
	MainWorker(db, maindata, singals)
}

func MainWorker(db *sqlx.DB, data []config.CD, signals []config.Signal)  {
	if len(data) > 0 {
		// Внешний арбитраж
		startSql := "INSERT INTO divergent (pair_id, exchanges1_id, exchanges2_id, diff, time) VALUES "
		var sqlStr string

		for _,a1 := range data {
			for _,a2 := range data {
				if a1.Market != a2.Market {
					if a1.Pair == a2.Pair {
						var summ float64
						if a1.Bid > a2.Ask {
							summ = (a1.Bid * 100 / a2.Ask) - 100
						}
						if a2.Bid > a1.Ask {
							summ = (a2.Bid * 100 / a1.Ask) - 100
						}
						if summ > 0 {
							sqlStr += "(get_pair_id('" + a1.Pair1 + "', '" + a1.Pair2 + "'), get_exchange_id('" + a1.Market + "'), get_exchange_id('" + a2.Market + "'), " + helpers.FloatToString(summ) + ", '" + time.Now().Format(time.RFC3339) + "'),"
							go helpers.WorkSignals(db, signals, a1.Pair1, a1.Pair2, "", summ, a1.Market, a2.Market, false) // Внешний
						}
					}
				}
			}
		}
		sqlStr = startSql + sqlStr
		sqlStr = sqlStr[0:len(sqlStr)-1]
		sqlStr = strings.TrimSuffix(sqlStr, ",")
		helpers.SaveQuery(sqlStr, db)

		// Внутренний арбитраж
		for _, d := range data {
			for _, d1 := range data {
				if d.Market == d1.Market {
					if (d.Pair2 == d1.Pair1 && d1.Pair1 != d.Pair1) || (d.Pair2 == d1.Pair2 && d1.Pair2 != d.Pair1) {
						var val1 string
						var val2 string
						if d.Pair2 == d1.Pair1 && d1.Pair1 != d.Pair1 {
							val1 = d1.Pair1
							val2 = d1.Pair2
						} else if d.Pair2 == d1.Pair2 && d1.Pair2 != d.Pair1 {
							val1 = d1.Pair2
							val2 = d1.Pair1
						}

						for _, d2 := range data {
							if d1.Market == d2.Market {
								if (val2 == d2.Pair2 && d2.Pair1 == d.Pair1) || (val2 == d2.Pair1 && d2.Pair2 == d.Pair1) {
									summ := Round((d1.Ask / d2.Ask) / 100, 2)
									cpa := summ * 0.25 / 100

									if summ > 0 {
										helpers.SaveInternal(db, d.Pair1, val1, val2, summ - cpa, d.Market)
										helpers.WorkSignals(db, signals, d.Pair1, val1, val2, summ - cpa, d.Market, "", true) // Внутренний
									}
								}
							}
						}
					}
				}
			}
		}
	}
}

func Round(x float64, prec int) float64 {
	var rounder float64
	pow := math.Pow(10, float64(prec))
	intermed := x * pow
	_, frac := math.Modf(intermed)
	if frac >= 0.5 {
		rounder = math.Ceil(intermed)
	} else {
		rounder = math.Floor(intermed)
	}

	return rounder / pow
}
