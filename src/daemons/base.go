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
	"amqp"
)

func YobitWorker(db *sqlx.DB, cfg config.Settings, yo *yobit.Yobit, pairs2 map[string][]string, exchan map[string][]string, assets map[string]string, mq *amqp.Channel)  {
	singals := helpers.InitSignals(db)

	maindata := make([]config.CD, 0)
	services := make([]string, 0)
	asks := make(map[string]map[string]float64)

	yostart := time.Now()
	yoba := helpers.Yobit(yo)
	fmt.Println("Запрос к ЁБит", time.Now().Sub(yostart))
	ex := "yobit"
	asks[ex] = make(map[string]float64)
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
		data.Last = helpers.FloatToString(v.Last)
		maindata = append(maindata, data)

		asks[ex][name1] = v.Low
	}
	services = append(services, ex)

	MainWorker(db, maindata, singals, pairs2, exchan, services, asks, assets, mq, cfg)
}

func Worker(cfg config.Settings, db *sqlx.DB, b *bittrex.Bittrex, p *poloniex.Poloniex, yo *yobit.Yobit, hit *hitbtc.HitBtc, pairs []config.DBPair, pairs2 map[string][]string, exchan map[string][]string, assets map[string]string, mq *amqp.Channel)  {
	start := time.Now()
	singals := helpers.InitSignals(db)

	maindata := make([]config.CD, 0)
	services := make([]string, 0)
	asks := make(map[string]map[string]float64)

	bitstart := time.Now()
	bit, eb := b.GetMarketSummaries()
	fmt.Println("Запрос к БитРекс:", time.Now().Sub(bitstart))
	if eb != nil {
		fmt.Println("CMS Битрикс не желает работать:", eb.Error())
	} else {
		ex := "bittrex"
		asks[ex] = make(map[string]float64)
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
			data.Last = v.Last.String()
			maindata = append(maindata, data)

			asks[ex][name1] = ask
		}
		services = append(services, ex)
	}
	polstart := time.Now()
	pol, ep := p.GetTickers()
	fmt.Println("Запрос к полоникс:", time.Now().Sub(polstart))
	if ep != nil {
		fmt.Println("Полоникс наполонил: ", ep.Error())
	} else {
		ex := "poloniex"
		asks[ex] = make(map[string]float64)
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
			data.Last = v.Last.String()
			maindata = append(maindata, data)

			asks[ex][name1] = ask
		}
		services = append(services, ex)
	}
	hitstart := time.Now()
	a, _ := hit.GetTickers()
	fmt.Println("Запрос к HitBtc:", time.Now().Sub(hitstart))
	if len(a) > 0 {
		ex := "hitbtc"
		asks[ex] = make(map[string]float64)
		for _, v := range a {
			data := config.CD{}

			data.Bid = v.Bid
			data.Ask = v.Ask
			data.Volume = helpers.FloatToString(v.Volume)
			data.Pair = v.Symbol
			data.Pair1, data.Pair2 = helpers.GetPairFromString(v.Symbol, pairs)
			data.Market = ex
			data.Last = helpers.FloatToString(v.Last)
			maindata = append(maindata, data)

			asks[ex][v.Symbol] = v.Ask
		}
		services = append(services, ex)
	}

	//if cfg.Yobit {
	//	yostart := time.Now()
	//	yoba := helpers.Yobit(yo)
	//	fmt.Println("Запрос к ЁБит", time.Now().Sub(yostart))
	//	ex := "yobit"
	//	asks[ex] = make(map[string]float64)
	//	for k, v := range yoba {
	//		data := config.CD{}
	//
	//		name := strings.Replace(k, "_", "-", -1)
	//		name1 := strings.Replace(name, "-", "", -1)
	//		names := strings.Split(name, "-")
	//
	//		data.Pair1 = names[0]
	//		data.Pair2 = names[1]
	//
	//		data.Bid = v.High
	//		data.Ask = v.Low
	//		data.Volume = helpers.FloatToString(v.VolCur)
	//		data.Pair = name1
	//		data.DelimPair = name
	//		data.Market = ex
	//		data.Last = helpers.FloatToString(v.Last)
	//		maindata = append(maindata, data)
	//
	//		asks[ex][name1] = v.Low
	//	}
	//	services = append(services, ex)
	//}

	//maindata = helpers.CheckPairs(maindata, pairs)
	fmt.Println("Итого на запросы:", time.Now().Sub(start))
	MainWorker(db, maindata, singals, pairs2, exchan, services, asks, assets, mq, cfg)
}

func MainWorker(db *sqlx.DB, data []config.CD, signals []config.Signal, pairs2 map[string][]string, exchan map[string][]string, services []string, asks map[string]map[string]float64, assets map[string]string, mq *amqp.Channel, cfg config.Settings)  {
	if len(data) > 0 {
		// Внешний арбитраж
		startSql := "INSERT INTO divergent (pair_id, exchanges1_id, exchanges2_id, diff, time) VALUES "
		var sqlStr string

		startex := time.Now()
		if cfg.Mqmode {
			mq = helpers.ChangeMQMode(mq, "external")
		}
		for _,a1 := range data {
			if cfg.Mqmode {
				output := make(map[string]interface{})
				output["market"] = exchan[a1.Market]
				output["asset1"] = assets[a1.Pair1]
				output["asset2"] = assets[a1.Pair2]
				output["last"] = a1.Last
				output["bid"] = a1.Bid
				output["ask"] = a1.Ask
				helpers.AddMQ("external", a1.Market + "-" + a1.Pair1  + "-" + a1.Pair2, mq, output)
			} else {
				go helpers.SaveTickers(db, a1.Market, a1.Pair1, a1.Pair2, a1.Last, helpers.FloatToString(a1.Bid), helpers.FloatToString(a1.Ask), time.Now().Format(time.RFC3339), a1.Volume)
			}

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
							sqlStr += "(" + pairs2[a1.DelimPair][0] + ", " + exchan[a1.Market][0] + ", " + exchan[a2.Market][0] + ", " + helpers.FloatToString(summ) + ", '" + time.Now().Format(time.RFC3339) + "'),"
							go helpers.WorkSignals(db, signals, a1.Pair1, a1.Pair2, "", summ, a1.Market, a2.Market, false) // Внешний
						}
					}
				}
			}
		}
		if len(sqlStr) > 0 {
			fmt.Println("Внешний-1", time.Now().Sub(startex))
			sqlStr = startSql + sqlStr
			sqlStr = sqlStr[0:len(sqlStr)-1]
			sqlStr = strings.TrimSuffix(sqlStr, ",")
			go helpers.SaveQuery(sqlStr, db)
			fmt.Println("Внешний-2", time.Now().Sub(startex))
		}

		// Внутренний арбитраж
		start := time.Now()
		var ini = 0

		operate := make(map[string][][]string)
		for _, s := range services {
			for _, d := range data {
				arr := []string{d.Pair1, d.Pair2}
				operate[s] = append(operate[s], arr)
			}
		}

		operate2 := make(map[string][][]string)
		for _, d1 := range data {
			for _, v := range operate[d1.Market] {
				if v[1] == d1.Pair1 && d1.Pair1 != v[0] {
					operate2[d1.Market] = append(operate2[d1.Market], []string{d1.Pair1, d1.Pair2, v[0]})
				} else if v[1] == d1.Pair2 && d1.Pair2 != v[0] {
					operate2[d1.Market] = append(operate2[d1.Market], []string{d1.Pair2, d1.Pair1, v[0]})
				}
			}
		}
		if cfg.Mqmode {
			mq = helpers.ChangeMQMode(mq, "internal")
		}
		for _, d2 := range data {
			go func() {
				for _, d0 := range operate2[d2.Market] {
					if len(d0) > 2 && d0[0] != "" && d0[1] != "" && d0[2] != "" && d2.Pair2 != "" && d2.Pair1 != "" {
						if (d0[1] == d2.Pair2 && d2.Pair1 == d0[2]) || (d0[1] == d2.Pair1 && d2.Pair2 == d0[2]) {
							summ := Round(asks[d2.Market][d0[0] + d0[1]] / d2.Ask, 2)
							cpa := summ * 0.25 / 100
							if summ > 0 {
								ini++
								if cfg.Mqmode {
									output := make(map[string]interface{})
									output["market"] = exchan[d2.Market]
									output["asset1"] = assets[d0[2]]
									output["asset2"] = assets[d0[0]]
									output["asset3"] = assets[d0[1]]
									output["percent"] = summ - cpa
									helpers.AddMQ("internal", d2.Market + "-" + d0[2]  + "-" + d0[0] + "-" + d0[1], mq, output)
								} else {
									go helpers.SaveInternal(db, d0[2], d0[0], d0[1], summ - cpa, d2.Market)
								}
								go helpers.WorkSignals(db, signals, d0[2], d0[0], d0[1], summ - cpa, d2.Market, "", true) // Внутренний
							}
							break
						}
					}
				}
			}()
		}

		fmt.Println("Внутренний:", time.Now().Sub(start))
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
