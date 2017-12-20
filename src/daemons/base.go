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
)

func Base(db *sqlx.DB, b *bittrex.Bittrex, p *poloniex.Poloniex) {
	bit, eb := b.GetMarketSummaries()
	if eb != nil {
		fmt.Println("CMS Битрикс не желает работать:", eb.Error())
	} else {
		ex := "bittrex"
		for _, v := range bit {
			name := strings.ToLower(v.MarketName)
			go helpers.SaveTickers(db, ex, name, v.Last.String(), v.High.String(), v.Low.String(), time.Now().Format(time.RFC3339), v.Volume.String())
		}
	}

	pol, ep := p.GetTickers()
	if ep != nil {
		fmt.Println("Полоникс наполонил: ", ep.Error())
	} else {
		for k, v := range pol {
			name := strings.ToLower(strings.Replace(k, "_", "-", -1))
			go helpers.SaveTickers(db, "poloniex", name, v.Last.String(), v.HighestBid.String(), v.LowestAsk.String(), time.Now().Format(time.RFC3339), v.BaseVolume.String())
		}
	}

	// Внешний арбитраж
	if len(bit) > 0 && len(pol) > 0 {
		startSql := "INSERT INTO divergent (pair_id, exchanges1_id, exchanges2_id, diff, time) VALUES "
		var sqlStr string

		for _,bv := range bit {
			for pk,pv := range pol {
				name := strings.ToLower(strings.Replace(pk, "_", "-", -1))
				if strings.ToLower(bv.MarketName) == name {
					var summ float64
					var bid float64
					var ask float64

					bid, _ = bv.Bid.Float64()
					ask, _ = pv.LowestAsk.Float64()
					if bid > ask {
						summ = (bid * 100 / ask) - 100
					}
					bid, _ = pv.HighestBid.Float64()
					ask, _ = bv.Ask.Float64()
					if bid > ask {
						summ = (bid * 100 / ask) - 100
					}
					if summ > 0 {
						names := strings.Split(name, "-")
						sqlStr += "(get_pair_id('" + names[0] + "', '" + names[1] + "'), get_exchange_id('bittrex'), get_exchange_id('poloniex'), " + helpers.FloatToString(summ) + ", '" + time.Now().Format(time.RFC3339) + "'),"
					}
					break
				}
			}
		}
		sqlStr = startSql + sqlStr
		sqlStr = sqlStr[0:len(sqlStr)-1]
		sqlStr = strings.TrimSuffix(sqlStr, ",")
		//start := time.Now().UnixNano()
		helpers.SaveQuery(sqlStr, db)
	}
	// Внутренний арбитраж(полонекс)
	if len(pol) > 0 {
		for pk := range pol {
			name := strings.ToLower(strings.Replace(pk, "_", "-", -1))
			splitPair := strings.Split(name, "-")

			for pk1, p1 := range pol {
				name := strings.ToLower(strings.Replace(pk1, "_", "-", -1))
				splitPair1 := strings.Split(name, "-")
				if (splitPair[1] == splitPair1[0] && splitPair1[0] != splitPair[0]) || (splitPair[1] == splitPair1[1] && splitPair1[1] != splitPair[0]) {
					var val1 string
					var val2 string
					if splitPair[1] == splitPair1[0] && splitPair1[0] != splitPair[0] {
						val1 = splitPair1[0]
						val2 = splitPair1[1]
					} else if splitPair[1] == splitPair1[1] && splitPair1[1] != splitPair[0] {
						val1 = splitPair1[1]
						val2 = splitPair1[0]
					}

					fl1, _ := p1.LowestAsk.Float64()

					for pk2, p2 := range pol {
						name := strings.ToLower(strings.Replace(pk2, "_", "-", -1))
						splitPair2 := strings.Split(name, "-")

						if (val2 == splitPair2[1] && splitPair2[0] == splitPair[0]) || (val2 == splitPair2[0] && splitPair2[1] == splitPair[0]) {
							fl2, _ := p2.LowestAsk.Float64()
							summ := Round((fl1 / fl2) / 100, 2)

							if summ > 0 {
								go helpers.SaveInternal(db, splitPair[0], val1, val2, summ, "poloniex")
							}
						}
					}
				}
			}
		}
	}
	// Внутренний арбитраж(битрикс)
	if len(bit) > 0 {
		for _, b := range bit {
			splitPair := strings.Split(strings.ToLower(b.MarketName), "-")

			for _, b1 := range bit {
				splitPair1 := strings.Split(strings.ToLower(b1.MarketName), "-")
				if (splitPair[1] == splitPair1[0] && splitPair1[0] != splitPair[0]) || (splitPair[1] == splitPair1[1] && splitPair1[1] != splitPair[0]) {
					var val1 string
					var val2 string
					if splitPair[1] == splitPair1[0] && splitPair1[0] != splitPair[0] {
						val1 = splitPair1[0]
						val2 = splitPair1[1]
					} else if splitPair[1] == splitPair1[1] && splitPair1[1] != splitPair[0] {
						val1 = splitPair1[1]
						val2 = splitPair1[0]
					}

					fl1, _ := b1.Ask.Float64()

					for _, b2 := range bit {
						splitPair2 := strings.Split(strings.ToLower(b2.MarketName), "-")

						if (val2 == splitPair2[1] && splitPair2[0] == splitPair[0]) || (val2 == splitPair2[0] && splitPair2[1] == splitPair[0]) {
							fl2, _ := b2.Ask.Float64()
							summ := Round((fl1 / fl2) / 100, 2)
							cpa := summ * 0.25 / 100

							if summ > 0 {
								helpers.SaveInternal(db, splitPair[0], val1, val2, summ - cpa, "bittrex")
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
