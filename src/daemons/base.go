package daemons

import (
	"time"
	"strings"
	"sqlx"
	"external"
	"helpers"
)


func Base(db *sqlx.DB) {
	response := external.Request()
	if len(response.Result) > 0 {
		temp := make(map[string]map[string]float64)
		var markets []string
		for k, v := range response.Result {
			key := strings.Split(k, ":")
			if key[0] == "bithumb" || key[0] == "bitfinex" {
				continue
			}
			if len(key) == 2 && len(key[1]) < 8 {
				if temp[key[1]] != nil {
					temp[key[1]][key[0]] = v.Price.Last
				} else {
					temp[key[1]] = make(map[string]float64)
					temp[key[1]][key[0]] = v.Price.Last
				}
				var isset bool
				for _, v := range markets {
					if v == key[0] {
						isset = true
						break
					}
				}
				if !isset {
					markets = append(markets, key[0])
				}
				go helpers.SaveTickers(db, key[0], key[1], helpers.FloatToString(v.Price.Last), helpers.FloatToString(v.Price.High), helpers.FloatToString(v.Price.Low), time.Now().Format(time.RFC3339))
			}
		}
		if len(temp) > 0 {
			startSql := "INSERT INTO divergent (pair_id, exchanges1_id, exchanges2_id, diff, time) VALUES "

			for k := range temp {
				var sqlStr string

				for _, m := range markets {
					for _, ma := range markets {
						if m == ma {
							continue
						} else {
							var summ float64
							if temp[k][m] != 0 && temp[k][ma] != 0 {

								summ = (temp[k][ma] * 100.0 / temp[k][m]) - 100
								//fmt.Println(summ, temp[k][m], temp[k][ma], k)
							}
							sqlStr += "(get_pair_id('" + k + "'), get_exchange_id('" + m + "'), get_exchange_id('" + ma + "'), " + helpers.FloatToString(summ) + ", '" + time.Now().Format(time.RFC3339) + "'),"
						}
					}
				}
				sqlStr = startSql + sqlStr
				sqlStr = sqlStr[0:len(sqlStr)-1]
				sqlStr = strings.TrimSuffix(sqlStr, ",")

				go helpers.SaveQuery(sqlStr, db)
			}
		}
	}
}

func Assets (db *sqlx.DB) {
	assets := external.GetAssets()
	if len(assets.Result) > 0 {
		for _, v := range assets.Result {
			a, e := db.Query("SELECT set_asset($1, $2, $3)", v.Symbol, v.Name, time.Now().Format(time.RFC3339))
			if e == nil {
				a.Close()
			} else {
				panic(e)
			}
		}
	}

	exchanges := external.GetExchanges()
	if len(exchanges.Result) > 0 {
		for _, v := range exchanges.Result {
			a, e := db.Query("SELECT set_exchange($1, $2, $3, $4)", v.Key, v.Name, v.Active, time.Now().Format(time.RFC3339))
			if e == nil {
				a.Close()
			} else {
				panic(e)
			}
		}
	}

	pairs := external.GetPairs()
	if len(pairs.Result) > 0 {
		for _, v := range pairs.Result {
			if len(v.Key) < 8 {
				a, e := db.Query("SELECT set_pair($1, $2, $3, $4, $5, $6)", v.Key, v.Base.Name, v.Base.Key, v.Quote.Name, v.Quote.Key, time.Now().Format(time.RFC3339))
				if e == nil {
					a.Close()
				} else {
					panic(e)
				}
			}
		}
	}

	markets := external.GetMarkets()
	if len(markets.Result) > 0 {
		for _, v := range markets.Result {
			if len(v.Pair) < 8 {
				a, e := db.Query("SELECT set_market($1, $2, $3, $4)", v.Exchange, v.Pair, v.Active, time.Now().Format(time.RFC3339))
				if e == nil {
					a.Close()
				} else {
					panic(e)
				}
			}
		}
	}
}
