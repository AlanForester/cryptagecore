package main

import (
	"go-hitbtc"
	"config"
	"prep"
	"helpers"
	"daemons"
	"go-poloniex"
	"go-bittrex"
	"go-yobit"
	"time"
)

func main() {
	// Нуны данные для подключения
	cfg := config.Parser()

	// Делаем коннекты с базой
	sqli, _ := prep.InitDB(cfg)

	//start := time.Now()

	// Делаем коннекты к биржам
	polon := poloniex.New("CNVUTAVQ-YGE5S5HN-0FA8BA7U-QQC2MRAP", "abec87d8ba68ed29893927e770879e8291003f5cfc3cf9cf3ae6bdcfd2c293f8f2f43c84b5d966d668c742165df71fc8207e7a0eed1e8052e83b5195b4775792")
	bitt := bittrex.New("88e548ba9f424c5bbd6706555aa69109", "b1c0bf1aa947490c8a5a1c9a20ae2188")
	yo := yobit.New("", "")
	hit := hitbtc.New("", "")

	//helpers.ControlPairs(sqli, hit)
	pairs := helpers.GetPairs(sqli)
	//daemons.Assets(sqli)
	//daemons.HitAssets(sqli, hit)
	//daemons.Worker(cfg, sqli, bitt, polon, yo, hit, pairs)

	tickers := time.NewTicker(3 * time.Second) // Вызываем тикер. Он же является каналом
	func() {
		for {
			select {
			case <- tickers.C:
				daemons.Worker(cfg, sqli, bitt, polon, yo, hit, pairs)
			}
		}
	}()

	//fmt.Println("main stage", time.Now().Sub(start))
}
