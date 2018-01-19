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
	"go-bittrex"
	"go-poloniex"
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
func SaveInternal(db *sqlx.DB, asset1 string, asset2 string, asset3 string, percent float64, exchange string, worktime time.Time)  {
	a, e := db.Query("SELECT save_internal($1, $2, $3, $4, $5, $6)", asset1, asset2, asset3, percent, exchange, worktime.UTC().Format(time.RFC3339))
	if e == nil {
		a.Close()
	} else {
		//fmt.Println(asset1, asset2, asset3, percent, exchange, time.Now().Format(time.RFC3339))
		//panic(e)
		fmt.Println("1", e)
	}
}

func CleanInternal(db *sqlx.DB, worktime time.Time)  {
	fmt.Println(worktime)
	d, e := db.Query("DELETE FROM internal WHERE time < to_timestamp($1)", worktime.Unix()-2)
	if e == nil {
		d.Close()
	}
	fmt.Println(e)
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

// Подгрузка роботов
func InitRobots(db *sqlx.DB) []config.DBRobot2 {
	robots := []config.DBRobot2{}
	db.Select(&robots, "SELECT robots.id as id, summ, safe, exchange1, exchange2, asset1, asset2, asset3, data1, data2 FROM robots LEFT JOIN signals ON(robots.signal=signals.id)")
	return robots
}

// Обработчик сигналов
func WorkSignals(db *sqlx.DB, signals []config.Signal, asset1 string, asset2 string, asset3 string, percent float64, exchange1 string, exchange2 string, internal bool, cfg config.Settings, b *bittrex.Bittrex, p *poloniex.Poloniex, yo *yobit.Yobit, hit *hitbtc.HitBtc, rate1 float64, rate2 float64, rate3 float64, robots []config.DBRobot2)  {
	if len(signals) > 0 {
		for _, s := range signals {
			if s.Types == 1 && internal { // Внутренний
				if s.Asset1 == asset1 && s.Asset2 == asset2 && s.Asset3 == asset3 && s.Exchange1 == exchange1 {
					if s.Data1 == 3 {
						if s.Data2 > percent {
							go saveSignalsIn(db, asset1, asset2, asset3, percent, exchange1, s.Name, s.UserId)
							//saveRobotIn(db, asset1, asset2, asset3, percent, exchange1, s.Name, s.UserId, cfg, b, p, yo, hit, rate1, rate2, robots)
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

func saveRobotIn(db *sqlx.DB, asset1 string, asset2 string, asset3 string, percent float64, exchange1 string, name string, user int64, cfg config.Settings, b *bittrex.Bittrex, p *poloniex.Poloniex, yo *yobit.Yobit, hit *hitbtc.HitBtc, rate1 float64, rate2 float64, rate3 float64, robots []config.DBRobot2)  {
	// check key
	if len(robots) > 0 {
		for _, robot := range robots {
			if exchange1 == robot.Exchange1 && asset1 == robot.Asset1 && asset2 == robot.Asset2 && asset3 == robot.Asset3 {
				safe := rate1 * robot.Safe / 100
				if exchange1 == "bittrex" && cfg.Api.Bittrex.Api != "" {
					a, e := b.SellLimit(strings.ToUpper(asset1 + "-" + asset2), robot.Summ, rate1 + safe)
					fmt.Println("b-robot-1", a, e)

					b0, _ := b.GetOrder(a)
					b1, _ := b0.Quantity.Float64()
					safe2 := rate2 * robot.Safe / 100
					b2, _ := b.SellLimit(strings.ToUpper(asset2 + "-" + asset3), b1, rate2 + safe2)
					fmt.Println("b-robot-2", b2)

					b3, _ := b.GetOrder(b2)
					b4, _ := b3.Quantity.Float64()
					safe3 := rate3 * robot.Safe / 100
					b5, _ := b.SellLimit(strings.ToUpper(asset3 + "-" + asset1), b4, rate3 + safe3)
					fmt.Println("b-robot-3", b5)
				}
				if exchange1 == "poloniex" && cfg.Api.Poloniex.Api != "" {
					b, e := p.Sell(strings.ToUpper(asset1 + "_" + asset2), rate1 + safe, robot.Summ, "")
					fmt.Println("p-robot", b, e)

					if len(b.ResultingTrades) > 0 {
						safe2 := rate2 * robot.Safe / 100
						b1, e1 := p.Sell(strings.ToUpper(asset2 + "_" + asset3), rate2 + safe2, b.ResultingTrades[0].Amount, "")
						fmt.Println("p-robot-2", b1, e1)

						if len(b1.ResultingTrades) > 0 {
							safe3 := rate3 * robot.Safe / 100
							b2, e2 := p.Sell(strings.ToUpper(asset3 + "_" + asset1), rate3 + safe3, b1.ResultingTrades[0].Amount, "")
							fmt.Println("p-robot-3", b2, e2)
						}
					}
				}
				if exchange1 == "hitbtc" && cfg.Api.Hitbtc.Api != "" {
					data := make(map[string]string)
					data["symbol"] = asset1 + asset2
					data["side"] = "sell"
					data["quantity"] = FloatToString(robot.Summ)
					data["price"] = FloatToString(safe)
					h, e := hit.Order(data)
					fmt.Println("h-robot", h, e)

					safe2 := rate2 * robot.Safe / 100
					data2 := make(map[string]string)
					data2["symbol"] = asset2 + asset3
					data2["side"] = "sell"
					data2["quantity"] = FloatToString(h.Quantity)
					data2["price"] = FloatToString(safe2)
					h2, e2 := hit.Order(data2)
					fmt.Println("h-robot-2", h2, e2)

					safe3 := rate3 * robot.Safe / 100
					data3 := make(map[string]string)
					data3["symbol"] = asset3 + asset1
					data3["side"] = "sell"
					data3["quantity"] = FloatToString(h2.Quantity)
					data3["price"] = FloatToString(safe3)
					h3, e3 := hit.Order(data3)
					fmt.Println("h-robot-3", h3, e3)
				}
				if exchange1 == "yobit" && cfg.Api.YoBit.Api != "" {
					st := "pair=" + asset1 + "_" + asset2 + "&type=sell&rate=" + FloatToString(safe) + "&amount=" + FloatToString(robot.Summ)
					t, e := yo.Trade(cfg.Api.YoBit.Api, st)
					fmt.Println("yo-robot", t,e)

					if t.Error == "" {
						safe2 := rate2 * robot.Safe / 100
						st2 := "pair=" + asset2 + "_" + asset3 + "&type=sell&rate=" + FloatToString(safe2) + "&amount=" + FloatToString(t.Return.Received)
						t2, e2 := yo.Trade(cfg.Api.YoBit.Api, st2)
						fmt.Println("yo-robot-2", t2,e2)

						if t2.Error == "" {
							safe3 := rate3 * robot.Safe / 100
							st3 := "pair=" + asset3 + "_" + asset1 + "&type=sell&rate=" + FloatToString(safe3) + "&amount=" + FloatToString(t2.Return.Received)
							t3, e3 := yo.Trade(cfg.Api.YoBit.Api, st3)
							fmt.Println("yo-robot-3", t3,e3)
						}
					}
				}
				break
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