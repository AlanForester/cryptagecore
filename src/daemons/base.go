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
	"strconv"
)

// Обработчик ЁБита
func YobitWorker(db *sqlx.DB, cfg config.Settings, yo *yobit.Yobit, pairs2 map[string][]string, exchan map[string][]string, assets map[string]string, mq *amqp.Channel, workrime time.Time)  {
	// Стартуем сигналы
	singals := helpers.InitSignals(db)
	// И роботов
	robots := helpers.InitRobots(db)

	maindata := make([]config.CD, 0) // Главный массив объектов с данными
	services := make([]string, 0) // Массив строк с биржами
	asks := make(map[string]map[string]float64) // Массив ASK'ов по биржам
	bids := make(map[string]map[string]float64) // Массив BID'ов по биржам

	// Обрабатываем
	yostart := time.Now()
	yoba := helpers.Yobit(yo)
	fmt.Println("Запрос к ЁБит", time.Now().Sub(yostart))
	ex := "yobit"
	asks[ex] = make(map[string]float64)
	bids[ex] = make(map[string]float64)
	for k, v := range yoba {
		data := config.CD{}

		// Стандартизируем формат (ибо каждый называет пары как хочет)
		name := strings.Replace(k, "_", "-", -1)
		name1 := strings.Replace(name, "-", "", -1)
		names := strings.Split(name, "-")

		// Заполняем
		data.Pair1 = names[0]
		data.Pair2 = names[1]

		data.Bid = v.High
		data.Ask = v.Low
		data.Volume = helpers.FloatToString(v.VolCur)
		data.Pair = name1
		data.DelimPair = name
		data.Market = ex
		data.Last = helpers.FloatToString(v.Last)

		// Добавляем
		maindata = append(maindata, data)

		asks[ex][name1] = v.Low
		bids[ex][name1] = v.High
	}
	services = append(services, ex)

	// Главный обработчик
	MainWorker(db, maindata, singals, pairs2, exchan, services, asks, bids, assets, mq, cfg, nil, nil, yo, nil, robots, workrime)
}

// Обработчик адекватных бирж
func Worker(cfg config.Settings, db *sqlx.DB, b *bittrex.Bittrex, p *poloniex.Poloniex, yo *yobit.Yobit, hit *hitbtc.HitBtc, pairs []config.DBPair, pairs2 map[string][]string, exchan map[string][]string, assets map[string]string, mq *amqp.Channel, workrime time.Time)  {
	start := time.Now()

	// Стартуем сигналы
	singals := helpers.InitSignals(db)
	// И роботов
	robots := helpers.InitRobots(db)

	maindata := make([]config.CD, 0) // Главный массив объектов с данными
	services := make([]string, 0) // Массив строк с биржами
	asks := make(map[string]map[string]float64) // Массив ASK'ов по биржам
	bids := make(map[string]map[string]float64) // Массив BID'ов по биржам

	// Обработка и стандартизация Bittrex
	bitstart := time.Now()
	bit, eb := b.GetMarketSummaries()
	fmt.Println("Запрос к БитРекс:", time.Now().Sub(bitstart))
	if eb != nil {
		fmt.Println("CMS Битрикс не желает работать:", eb.Error())
	} else {
		ex := "bittrex"
		asks[ex] = make(map[string]float64)
		bids[ex] = make(map[string]float64)
		for _, v := range bit {
			data := config.CD{}

			// Стандартизируем формат (ибо каждый называет пары как хочет)
			name := strings.ToLower(v.MarketName)
			name1 := strings.Replace(name, "-", "", -1)
			names := strings.Split(name, "-")

			// Заполняем
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

			// Добавляем
			maindata = append(maindata, data)

			asks[ex][name1] = ask
			bids[ex][name1] = bid
		}
		services = append(services, ex)
	}

	// Обработка Poloniex
	polstart := time.Now()
	pol, ep := p.GetTickers()
	fmt.Println("Запрос к полоникс:", time.Now().Sub(polstart))
	if ep != nil {
		fmt.Println("Полоникс наполонил: ", ep.Error())
	} else {
		ex := "poloniex"
		asks[ex] = make(map[string]float64)
		bids[ex] = make(map[string]float64)
		for k, v := range pol {
			data := config.CD{}

			// Стандартизируем формат (ибо каждый называет пары как хочет)
			name := strings.ToLower(strings.Replace(k, "_", "-", -1))
			name1 := strings.Replace(name, "-", "", -1)
			names := strings.Split(name, "-")

			// Заполняем
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

			// Добавляем
			maindata = append(maindata, data)

			asks[ex][name1] = ask
			bids[ex][name1] = bid
		}
		services = append(services, ex)
	}

	// Обработка HitBtc
	hitstart := time.Now()
	a, _ := hit.GetTickers()
	fmt.Println("Запрос к HitBtc:", time.Now().Sub(hitstart))
	if len(a) > 0 {
		ex := "hitbtc"
		asks[ex] = make(map[string]float64)
		bids[ex] = make(map[string]float64)
		for _, v := range a {
			data := config.CD{}

			// Заполняем
			data.Bid = v.Bid
			data.Ask = v.Ask
			data.Volume = helpers.FloatToString(v.Volume)
			data.Pair = strings.ToLower(v.Symbol)
			data.Pair1, data.Pair2 = helpers.GetPairFromString(data.Pair, pairs)
			data.Market = ex
			data.Last = helpers.FloatToString(v.Last)

			// Добавляем
			maindata = append(maindata, data)
			asks[ex][v.Symbol] = v.Ask
			bids[ex][v.Symbol] = v.Bid
		}
		services = append(services, ex)
	}

	// Ёбит успешно поживает в отдельной функции. Раскоментирование этого сделает данные более верными, но тормозить будет не только ёбит
	//if cfg.Yobit { // Запуск по требованию
	//	yostart := time.Now()
	//	yoba := helpers.Yobit(yo)
	//	fmt.Println("Запрос к ЁБит", time.Now().Sub(yostart))
	//	ex := "yobit"
	//	asks[ex] = make(map[string]float64)
	//	bids[ex] = make(map[string]float64)
	//	for k, v := range yoba {
	//		data := config.CD{}
	//
	//		// Стандартизируем формат (ибо каждый называет пары как хочет)
	//		name := strings.Replace(k, "_", "-", -1)
	//		name1 := strings.Replace(name, "-", "", -1)
	//		names := strings.Split(name, "-")
	//
	//		// Заполняем
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
	//
	//		// Добавляем
	//		maindata = append(maindata, data)
	//
	//		asks[ex][name1] = v.Low
	//		bids[ex][name1] = v.High
	//	}
	//	services = append(services, ex)
	//}

	//maindata = helpers.CheckPairs(maindata, pairs)
	fmt.Println("Итого на запросы:", time.Now().Sub(start))
	MainWorker(db, maindata, singals, pairs2, exchan, services, asks, bids, assets, mq, cfg, b, p, yo, hit, robots, workrime)
}

// Главный обработчик и заносчик данных в базу
func MainWorker(db *sqlx.DB, data []config.CD, signals []config.Signal, pairs2 map[string][]string, exchan map[string][]string, services []string, asks map[string]map[string]float64, bids map[string]map[string]float64, assets map[string]string, mq *amqp.Channel, cfg config.Settings, b *bittrex.Bittrex, p *poloniex.Poloniex, yo *yobit.Yobit, hit *hitbtc.HitBtc, robots []config.DBRobot2, workrime time.Time)  {
	if len(data) > 0 { // Нет данных - нет работы
		// Внешний арбитраж
		startSql := "INSERT INTO divergent (pair_id, exchanges1_id, exchanges2_id, diff, time) VALUES " // Строим строку
		var sqlStr string

		startex := time.Now()

		// КроликMQ. Включить, если нужно посылать в канал
		//if cfg.Mqmode {
		//	mq = helpers.ChangeMQMode(mq, "external")
		//}

		var saveZone []string

		for _,a1 := range data {
			if (helpers.Dasset[a1.Market + "_" + strings.ToUpper(a1.Pair1)] && helpers.Dasset[a1.Market + "_" + strings.ToUpper(a1.Pair2)]) || a1.Market == "yobit" {
				if cfg.Mqmode { // Режим работы с кроликом
					// Строим карту
					output := make(map[string]interface{})
					output["market"] = exchan[a1.Market][1]
					output["asset1"] = assets[a1.Pair1]
					output["asset2"] = assets[a1.Pair2]
					output["last"] = a1.Last
					output["bid"] = a1.Bid
					output["ask"] = a1.Ask
					//output["id"] = strconv.FormatInt(time.Now().Unix(), 0) + strconv.FormatInt(time.Now().UnixNano(), 0)
					// Суем в кролика
					helpers.AddMQ("external", a1.Market + "-" + a1.Pair1  + "-" + a1.Pair2, mq, output)
				} else { // ПГ режим
					go helpers.SaveTickers(db, a1.Market, a1.Pair1, a1.Pair2, a1.Last, helpers.FloatToString(a1.Bid), helpers.FloatToString(a1.Ask), time.Now().Format(time.RFC3339), a1.Volume)
				}

				// Переборчик
				for _,a2 := range data {
					if (helpers.Dasset[a2.Market + "_" + strings.ToUpper(a2.Pair1)] && helpers.Dasset[a2.Market + "_" + strings.ToUpper(a2.Pair2)]) || a2.Market == "yobit" {
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
									var issetsz bool
									for _, sz := range saveZone {
										if sz == a2.Market + a1.Pair {
											issetsz = true
											break
										}
									}
									if issetsz == false {
										saveZone = append(saveZone, a1.Market + a1.Pair)
										sqlStr += "(" + pairs2[a1.DelimPair][0] + ", " + exchan[a1.Market][0] + ", " + exchan[a2.Market][0] + ", " + helpers.FloatToString(summ) + ", '" + time.Now().Format(time.RFC3339) + "'),"
										// Обработка сигналов
										go helpers.WorkSignals(db, signals, a1.Pair1, a1.Pair2, "", summ, a1.Market, a2.Market, false, cfg, b, p, yo, hit, a1.Ask, a2.Ask, 0, robots) // Внешний
									}
								}
							}
						}
					}
				}
			}
		}
		if len(sqlStr) > 0 { // Если что-то есть - значит что-нито делаем
			fmt.Println("Внешний-1", time.Now().Sub(startex))
			sqlStr = startSql + sqlStr // Собираем строку
			sqlStr = sqlStr[0:len(sqlStr)-1] // Удаляем аппендицит
			sqlStr = strings.TrimSuffix(sqlStr, ",") // Удаляем аппендицит... еще раз
			go helpers.SaveQuery(sqlStr, db) // Сохраняем
			fmt.Println("Внешний-2", time.Now().Sub(startex))
		}

		// Внутренний арбитраж
		start := time.Now()
		var ini = 0 // Счетчик

		// Собираем первый массив с только необходимыми данными
		operate := make(map[string][][]string)
		for _, s := range services {
			for _, d := range data {
				if (helpers.Dasset[s + "_" + strings.ToUpper(d.Pair1)] && helpers.Dasset[s + "_" + strings.ToUpper(d.Pair2)]) || s == "yobit" {
					arr := []string{d.Pair1, d.Pair2, strconv.FormatFloat(d.Ask, 'E', -1, 64)}
					operate[s] = append(operate[s], arr)
				}
			}
		}

		// Проверяем первую пару и исходный вариант, собираем второй массив
		operate2 := make(map[string][][]string)
		for _, d1 := range data {
			if (helpers.Dasset[d1.Market + "_" + strings.ToUpper(d1.Pair1)] && helpers.Dasset[d1.Market + "_" + strings.ToUpper(d1.Pair2)]) || d1.Market == "yobit" {
				for _, v := range operate[d1.Market] {
					if v[1] == d1.Pair1 && d1.Pair1 != v[0] {
						operate2[d1.Market] = append(operate2[d1.Market], []string{d1.Pair1, d1.Pair2, v[0], v[2], v[1], "da"})
					} else if v[1] == d1.Pair2 && d1.Pair2 != v[0] {
						//operate2[d1.Market] = append(operate2[d1.Market], []string{d1.Pair1, d1.Pair2, v[0], v[2], v[1], "net"})
						operate2[d1.Market] = append(operate2[d1.Market], []string{d1.Pair2, d1.Pair1, v[0], v[2], v[1], "net"})
					}
				}
			}
		}
		// КроликMQ. Включить, если нужно посылать в канал
		//if cfg.Mqmode {
		//	mq = helpers.ChangeMQMode(mq, "internal")
		//}
		// Сравниваем третью пару с второй и первым элементом. Считаем денюжки и сохраняем
		for _, d2 := range data {
			if (helpers.Dasset[d2.Market + "_" + strings.ToUpper(d2.Pair1)] && helpers.Dasset[d2.Market + "_" + strings.ToUpper(d2.Pair2)]) || d2.Market == "yobit" {
				//go func() { // Разпараллеливаем
				for _, d0 := range operate2[d2.Market] {
					if len(d0) > 4 && d0[0] != "" && d0[1] != "" && d0[2] != "" && d2.Pair2 != "" && d2.Pair1 != "" {
						if (d0[1] == d2.Pair2 && d2.Pair1 == d0[2]) || (d0[1] == d2.Pair1 && d2.Pair2 == d0[2]) {
							var summ float64
							if d0[1] == d2.Pair2 && d2.Pair1 == d0[2] { // Если обратная связь
								if d0[5] == "net" {
									summ = ((1 / asks[d2.Market][d0[2] + d0[4]] * bids[d2.Market][d0[1] + d0[0]] * d2.Bid) - 1) * 100
								} else {
									summ = ((1 / asks[d2.Market][d0[2] + d0[4]] / asks[d2.Market][d0[1] + d0[0]] * d2.Bid) - 1) * 100
								}

								if !math.IsInf(summ, 0) && summ > 0 {
									fmt.Println("обратная", d2.Market, "1 / " , d0[2] , "->", d0[4], asks[d2.Market][d0[2] + d0[4]], ",", d0[1], "->" , d0[0], asks[d2.Market][d0[1] + d0[0]], ",", d2.Pair1, "->", d2.Pair2, d2.Ask, "summ", summ)
								}
							} else { // Если прямая
								if d0[5] == "net" {
									summ = ((1 / asks[d2.Market][d0[2] + d0[4]] * bids[d2.Market][d0[0] + d0[1]] / d2.Ask) - 1) * 100
								} else {
									summ = ((1 / asks[d2.Market][d0[2] + d0[4]] / asks[d2.Market][d0[0] + d0[1]] / d2.Ask) - 1) * 100
								}

								if !math.IsInf(summ, 0) && summ > 0 {
									fmt.Println("прямая", d2.Market, "1 / " , d0[2] , "->", d0[4], asks[d2.Market][d0[2] + d0[4]], ",", d0[0], "->" , d0[1], asks[d2.Market][d0[0] + d0[1]], ",", d2.Pair1, "->", d2.Pair2, d2.Ask, "summ", summ)
								}
							}

							if math.IsInf(summ, 0) {
								summ = 0
							}
							summ = Round(summ, 2)

							cpa := summ * 0.25 / 100
							if summ > 0 {
								if cfg.Mqmode { // Режим работы с КроликMQ
									output := make(map[string]interface{})
									output["market"] = exchan[d2.Market][1]
									output["asset1"] = assets[d0[2]]
									output["asset2"] = assets[d0[0]]
									output["asset3"] = assets[d0[1]]
									output["percent"] = summ - cpa
									//output["id"] = strconv.FormatInt(time.Now().Unix(), 0) + strconv.FormatInt(time.Now().UnixNano(), 0)
									helpers.AddMQ("internal", d2.Market + "-" + d0[2]  + "-" + d0[0] + "-" + d0[1], mq, output)
									ini++
								} else { // Режим работы с ПГ
									go helpers.SaveInternal(db, d0[2], d0[0], d0[1], summ - cpa, d2.Market, workrime)
								}
								asum, _ := strconv.ParseFloat(d0[3], -1)
								go helpers.WorkSignals(db, signals, d0[2], d0[0], d0[1], summ - cpa, d2.Market, "", true, cfg, b, p, yo, hit, asum, asks[d2.Market][d0[0] + d0[1]], d2.Ask, robots) // Внутренний
							}
							break
						}
					}
				}
				//}()
			}

		}
		fmt.Println("Внутренний:", time.Now().Sub(start))
		helpers.CleanInternal(db, workrime)
	}
}

// Округляет плавающее число до prec знаков
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
