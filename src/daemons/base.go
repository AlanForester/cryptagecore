package daemons

import (
	"time"
	"strings"
	"sqlx"
	"strconv"
	"external"
	"fmt"
	"net/http"
	"encoding/json"
	"jwt"
)

type ApiData struct {
	Valid bool `json:"valid"`
	Result []struct {
		Pairid int64 `json:"pairid" db:"pair_id"`
		Pairname string `json:"pair_name" db:"p_name"`
		BaseKey string `json:"base_key" db:"base_key"`
		QuoteKey string `json:"quote_key" db:"quote_key"`
		Ex1Name string `json:"ex1_name" db:"e1_name"`
		Ex2Name string `json:"ex2_name" db:"e2_name"`
		Diff float64 `json:"diff" db:"diff"`
		Time time.Time `json:"time" db:"time"`
	} `json:"result"`
}

func Base(db *sqlx.DB) {
	response := external.Request()
	if len(response.Result) > 0 {
		//final := make(map[string]map[string]float64)
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

				//fmt.Println(key[0], key[1], FloatToString(v.Price.Last), FloatToString(v.Price.High), FloatToString(v.Price.Low), time.Now().Format(time.RFC3339))
				a, e := db.Query("SELECT save_tikers($1, $2, $3, $4, $5, $6)", key[0], key[1], FloatToString(v.Price.Last), FloatToString(v.Price.High), FloatToString(v.Price.Low), time.Now().Format(time.RFC3339))
				if e == nil {
					a.Close()
				} else {
					panic(e)
				}
			}
		}
		if len(temp) > 0 {
			startSql := "INSERT INTO divergent (pair_id, exchanges1_id, exchanges2_id, diff, time) VALUES "

			for k := range temp {
				//start2 := time.Now().UnixNano()
				var sqlStr string

				//final[k] = make(map[string]float64)
				for _, m := range markets {
					for _, ma := range markets {
						if m == ma {
							continue
						} else {
							var summ float64
							if temp[k][m] != 0 && temp[k][ma] != 0 {

								summ = (temp[k][ma] * 100.0 / temp[k][m]) - 100
								fmt.Println(summ, temp[k][m], temp[k][ma], k)
							}
							sqlStr += "(get_pair_id('" + k + "'), get_exchange_id('" + m + "'), get_exchange_id('" + ma + "'), " + FloatToString(summ) + ", '" + time.Now().Format(time.RFC3339) + "'),"
						}
					}
				}
				sqlStr = startSql + sqlStr
				sqlStr = sqlStr[0:len(sqlStr)-1]
				sqlStr = strings.TrimSuffix(sqlStr, ",")
				//start := time.Now().UnixNano()
				a, e := db.Query(sqlStr)
				if e != nil {
					fmt.Println(e)
				} else {
					a.Close()
				}
				//fmt.Println(k, time.Now().UnixNano() - start, time.Now().UnixNano() - start2)
			}

			//sqlStr = sqlStr[0:len(sqlStr)-1]
			//sqlStr = strings.TrimSuffix(sqlStr, ",")
			//a, e := db.Query(sqlStr)
			//if e != nil {
			//	fmt.Println(e)
			//} else {
			//	a.Close()
			//}

		}

		fmt.Println("всё")
	}
	//if len(response.Result) > 0 {
	//	sqlStr := "INSERT INTO tikers (market, valute, value, ask, bid, time) VALUES "
	//
	//	for k, v := range response.Result {
	//		key := strings.Split(k, ":")
	//		if len(key) == 2 && len(key[1]) < 8 {
	//			sqlStr += "('" + key[0] + "', '" + key[1] + "', " + FloatToString(v.Price.Last) + ", " + FloatToString(v.Price.High) + ", " + FloatToString(v.Price.Low) + ", '" + time.Now().Format(time.RFC3339) + "'),"
	//		}
	//	}
	//
	//	sqlStr = sqlStr[0:len(sqlStr)-1]
	//	sqlStr = strings.TrimSuffix(sqlStr, ",")
	//	fmt.Println(sqlStr)
		//prepare the statement
		//stmt, e := db.Prepare(sqlStr)
		//a, e := db.Query(sqlStr)
		//fmt.Println(a, e)
	//}
}

func Api(w http.ResponseWriter, r *http.Request, db *sqlx.DB, _ map[string]interface{}, data *jwt.Claims)  {
	var result ApiData
	result.Valid = true
	tt := time.Now().Add(time.Minute * -5).Format(time.RFC3339)
	//e := db.Select(&result.Result, "SELECT pair_id, base_key, quote_key, e1.name as e1_name, e2.name as e2_name, divergent.time as time, diff, p.pair_name as p_name FROM divergent LEFT JOIN exchanges AS e1 ON (exchanges1_id=e1.id) LEFT JOIN exchanges AS e2 ON (exchanges2_id=e2.id) LEFT JOIN pairs as p ON (pair_id=p.id) WHERE divergent.time > '" + tt + "' ORDER BY diff DESC LIMIT 1000")
	e := db.Select(&result.Result, "SELECT e1.name as e1_name, e2.name as e2_name, MIN(divergent.time) as time, AVG(divergent.diff) as diff, p.pair_name as p_name FROM divergent LEFT JOIN exchanges AS e1 ON (exchanges1_id=e1.id) LEFT JOIN exchanges AS e2 ON (exchanges2_id=e2.id) LEFT JOIN pairs as p ON (pair_id=p.id) WHERE divergent.time > '" + tt + "' GROUP BY e1.name, e2.name, p.pair_name ORDER BY diff DESC LIMIT 200")
	if e != nil {
		fmt.Println(e)
	}

	res, e := json.Marshal(result)
	fmt.Println(string(res))
	fmt.Fprintf(w, string(res))
	return
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

func FloatToString(input_num float64) string {
	// to convert a float number to a string
	return strconv.FormatFloat(input_num, 'f', 6, 64)
}
