package helpers

import (
	"sqlx"
	"fmt"
	"time"
	"strings"
	"config"
	"go-yobit"
	"encoding/json"
	"go-hitbtc"
)

// Сохранение исходных данных от бирж
func SaveTickers(db *sqlx.DB, exchange string, pair1 string, pair2 string, price string, hi string, low string, t string, volume string) { // exch, pair, price, ask, bid, time
	if pair1 != "" && pair2 != "" {
		a, e := db.Query("SELECT save_tikers($1, $2, $3, $4, $5, $6, $7, $8)", exchange, pair1, pair2, price, hi, low, t, volume)
		if e == nil {
			a.Close()
		} else {
			//fmt.Println(exchange, pair1, pair2, price, hi, low, t, volume)
			//panic(e)
			fmt.Println("0", e)
		}
	}
}

// Сохранение внутреннего арбитража в ПГ
func SaveInternal(db *sqlx.DB, asset1 string, asset2 string, asset3 string, percent float64, exchange string)  {
	a, e := db.Query("SELECT save_internal($1, $2, $3, $4, $5, $6)", asset1, asset2, asset3, percent, exchange, time.Now().Format(time.RFC3339))
	if e == nil {
		a.Close()
	} else {
		//fmt.Println(asset1, asset2, asset3, percent, exchange, time.Now().Format(time.RFC3339))
		//panic(e)
		fmt.Println("1", e)
	}
}

// Сохранение чегоугодно/внешнего арбитража в ПГ
func SaveQuery(data string, db *sqlx.DB)  {
	a, e := db.Query(data)
	if e != nil {
		fmt.Println(data)
		fmt.Println("2", e)
		//panic(e)
	} else {
		a.Close()
	}
}

// Подгрузка сигналов из базы
func InitSignals(db *sqlx.DB) []config.Signal {
	signals := []config.Signal{}
	db.Select(&signals, "SELECT * FROM signals")
	return signals
}

// Обработчик сигналов
func WorkSignals(db *sqlx.DB, signals []config.Signal, asset1 string, asset2 string, asset3 string, percent float64, exchange1 string, exchange2 string, internal bool)  {
	if len(signals) > 0 {
		for _, s := range signals {
			if s.Types == 1 && internal { // Внутренний
				if s.Asset1 == asset1 && s.Asset2 == asset2 && s.Asset3 == asset3 && s.Exchange1 == exchange1 {
					if s.Data1 == 3 {
						if s.Data2 > percent {
							go saveSignalsIn(db, asset1, asset2, asset3, percent, exchange1, s.Name, s.UserId)
						}
					} else if s.Data1 == 4 {
						if s.Data2 < percent {
							go saveSignalsIn(db, asset1, asset2, asset3, percent, exchange1, s.Name, s.UserId)
						}
					}
				}
			} else if s.Types == 2 && !internal { // Внешний
				if s.Asset1 == asset1 && s.Asset2 == asset2 && s.Exchange1 == exchange1 && s.Exchange2 == exchange2 {
					if s.Data1 == 1 {
						if s.Data2 > percent {
							go saveSignalsEx(db, asset1, asset2, percent, exchange1, exchange2, s.Name, s.UserId)
						}
					} else if s.Data1 == 2 {
						if s.Data2 < percent {
							go saveSignalsEx(db, asset1, asset2, percent, exchange1, exchange2, s.Name, s.UserId)
						}
					}
				}
			}
		}
	}
}

func saveSignalsIn(db *sqlx.DB, asset1 string, asset2 string, asset3 string, percent float64, exchange1 string, name string, user int64)  {
	a, e := db.Query("SELECT save_event_in('" + asset1 + "', '" + asset2 + "', '" + asset3 + "', '" + exchange1 + "', $1, $2, $3, $4)", time.Now().Format(time.RFC3339), name, percent, user)
	if e == nil {
		a.Close()
	} else {
		panic(e)
	}
}

func saveSignalsEx(db *sqlx.DB, asset1 string, asset2 string, percent float64, exchange1 string, exchange2 string, name string, user int64)  {
	a, e := db.Query("SELECT save_event_ex('" + asset1 + "', '" + asset2 + "', '" + exchange1 + "', '" + exchange2 + "'), $1, $2, $3, $4)", time.Now().Format(time.RFC3339), name, percent, user)
	if e == nil {
		a.Close()
	} else {
		panic(e)
	}
}

// Получатель данных из HitBTC
func GetHitBTC(db *sqlx.DB, hit *hitbtc.HitBtc)  {
	a, _ := hit.GetTickers()
	if len(a) > 0 {
		for _, v := range a {
			fmt.Println(v.Symbol, v.Ask, v.Bid)
		}
	}
}

// Обработчик Ёбита. Гарантии и обмену не подлежит
func Yobit(yo *yobit.Yobit) map[string]yobit.Ticker {
	result := make(map[string]yobit.Ticker)
	y, e := yo.GetTickers()
	if len(y) > 0 {
		var tickers [][]string
		var tempticks []string
		var i = 0
		for k := range y {
			if i >= 50 {
				tickers = append(tickers, tempticks)
				tempticks = []string{}
				tempticks = append(tempticks, k)
				i = 1
			} else {
				tempticks = append(tempticks, k)
				i++
			}
		}

		var Yochan = make(chan string, 0)
		var s1 = 1
		for _, v := range tickers {
			ticks := strings.Join(v, "-")
			go YoCreate(yo, ticks, Yochan)
			s1++
		}

		var hz = 1
		tick := time.NewTicker(1 * time.Millisecond) // Вызываем тикер. Он же является каналом
		func() { // Рутинная задача
			for {
				select { // Ожидаем данных
				case <- tick.C:
					data := <- Yochan
					//fmt.Println(data)
					if len(data) > 10 {
						yostruct := make(map[string]yobit.Ticker)
						json.Unmarshal([]byte(data), &yostruct)
						for k, v := range yostruct{
							result[k] = v
						}
					}
					hz++
					if hz == s1 {
						return
					}
				}
			}
		}()
	} else {
		fmt.Println(y, e)
	}
	fmt.Println("ЁБит пар:", len(result))
	return result
}

// Ёбит, получение данных по строке пар
func YoCreate(yo *yobit.Yobit, ticks string, yochan chan string) {
	a, o := yo.GetTicks(ticks)
	if o == nil {
		go func() {
			yochan <- a
		}()
	} else {
		fmt.Println("YoCreate error:", o)
		go func() {
			yochan <- ""
		}()
	}
}