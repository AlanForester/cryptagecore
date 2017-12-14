package main

import (
	"config"
	"prep"
	"daemons"
	"go-poloniex"
	"go-bittrex"
	"time"
)

func main() {
	// Нуны данные для подключения
	cfg := config.Parser()

	// Делаем коннекты с базой
	sqli, _ := prep.InitDB(cfg)

	//start := time.Now().UnixNano()

	// Делаем коннекты к биржам
	polon := poloniex.New("CNVUTAVQ-YGE5S5HN-0FA8BA7U-QQC2MRAP", "abec87d8ba68ed29893927e770879e8291003f5cfc3cf9cf3ae6bdcfd2c293f8f2f43c84b5d966d668c742165df71fc8207e7a0eed1e8052e83b5195b4775792")
	bitt := bittrex.New("88e548ba9f424c5bbd6706555aa69109", "b1c0bf1aa947490c8a5a1c9a20ae2188")

	//daemons.Base(sqli, bitt, polon)

	tickers := time.NewTicker(2 * time.Second) // Вызываем тикер. Он же является каналом
	func() {
		for {
			select {
			case <- tickers.C:
				daemons.Base(sqli, bitt, polon)
			}
		}
	}()

	//fmt.Println(time.Now().UnixNano() - start)
}
