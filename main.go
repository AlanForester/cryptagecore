package main

import (
	"config"
	"prep"
	"helpers"
	"daemons"
	"go-yobit"


	"log"
	"time"
	"fmt"
	"go-poloniex"
	"go-bittrex"
	"go-hitbtc"
	"amqp"
)

func main() {
	// Нуны данные для подключения
	cfg := config.Parser()

	// Делаем коннекты с базой
	sqli, _ := prep.InitDB(cfg)

	// Подключаемся к кроликMQ
	var err error
	var c *amqp.Channel
	if cfg.Mqmode {
		mq := prep.InitMQ(cfg)
		c, err = mq.Channel()
		if err != nil {
			log.Fatalf("channel.open: %s", err)
		}
	}

	// Делаем коннекты к биржам
	polon := poloniex.New(cfg.Api.Poloniex.Api, cfg.Api.Poloniex.Key)
	bitt := bittrex.New(cfg.Api.Bittrex.Api, cfg.Api.Bittrex.Key)
	yo := yobit.New("", "")
	hit := hitbtc.New("", "")

	// Вытаскиваем полезные данные из ПГ
	pairs, pairs2 := helpers.GetPairs(sqli)
	_, assets := helpers.GetAssets(sqli)
	exchan := helpers.PrepareEx(sqli)
	//helpers.ControlPairs(sqli, hit)
	//daemons.Assets(sqli)
	daemons.UpdateAssets(bitt, polon, hit)

	// Кусочек для тестов без интервала
	//startt := time.Now()
	//daemons.Worker(cfg, sqli, bitt, polon, yo, hit, pairs, pairs2, exchan, assets, c)
	//fmt.Println("Весь проход", time.Now().Sub(startt))
	//daemons.YobitWorker(sqli, cfg, yo,pairs2,exchan, assets, c)

	tickers := time.NewTicker(2 * time.Second) // Интервал для адекватных бирж
	ytickers := time.NewTicker(20 * time.Second) // Интервал для Ёбита
	go func() {
		for {
			select {
			case <- tickers.C:
				start := time.Now().UTC()
				daemons.Worker(cfg, sqli, bitt, polon, yo, hit, pairs, pairs2, exchan, assets, c, start)
				fmt.Println("Весь проход", time.Now().UTC().Sub(start))
			}
		}
	}()
	func() {
		for {
			select {
			case <- ytickers.C:
				if cfg.Yobit {
					start := time.Now().UTC()
					daemons.YobitWorker(sqli,cfg, yo,pairs2,exchan, assets, c, start)
				}
			}
		}
	}()
}
