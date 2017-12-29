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
)

func main() {
	// Нуны данные для подключения
	cfg := config.Parser()

	// Делаем коннекты с базой
	sqli, _ := prep.InitDB(cfg)

	mq := prep.InitMQ(cfg)
	c, err := mq.Channel()
	if err != nil {
		log.Fatalf("channel.open: %s", err)
	}

	// Делаем коннекты к биржам
	polon := poloniex.New("CNVUTAVQ-YGE5S5HN-0FA8BA7U-QQC2MRAP", "abec87d8ba68ed29893927e770879e8291003f5cfc3cf9cf3ae6bdcfd2c293f8f2f43c84b5d966d668c742165df71fc8207e7a0eed1e8052e83b5195b4775792")
	bitt := bittrex.New("88e548ba9f424c5bbd6706555aa69109", "b1c0bf1aa947490c8a5a1c9a20ae2188")
	yo := yobit.New("", "")
	hit := hitbtc.New("", "")

	//helpers.ControlPairs(sqli, hit)
	pairs, pairs2 := helpers.GetPairs(sqli)
	_, assets := helpers.GetAssets(sqli)
	exchan := helpers.PrepareEx(sqli)
	//daemons.Assets(sqli)
	//daemons.HitAssets(sqli, hit)

	//startt := time.Now()
	//daemons.Worker(cfg, sqli, bitt, polon, yo, hit, pairs, pairs2, exchan, assets, c)
	//fmt.Println("Весь проход", time.Now().Sub(startt))
	//daemons.YobitWorker(sqli, cfg, yo,pairs2,exchan, assets, c)

	tickers := time.NewTicker(2 * time.Second) // Вызываем тикер. Он же является каналом
	ytickers := time.NewTicker(2 * time.Second) // Вызываем тикер. Он же является каналом
	go func() {
		for {
			select {
			case <- tickers.C:
				start := time.Now()
				daemons.Worker(cfg, sqli, bitt, polon, yo, hit, pairs, pairs2, exchan, assets, c)
				fmt.Println("Весь проход", time.Now().Sub(start))
			}
		}
	}()
	func() {
		for {
			select {
			case <- ytickers.C:
				if cfg.Yobit {
					daemons.YobitWorker(sqli,cfg, yo,pairs2,exchan, assets, c)
				}
			}
		}
	}()
}
