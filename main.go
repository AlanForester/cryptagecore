package main

import (
	"config"
	"prep"
	"fmt"
	"net/http"
	"daemons"
	"web"
	"time"
)

func main() {
	// Нуны данные для подключения
	cfg := config.Parser()

	// Делаем коннекты с базой
	sqli, _ := prep.InitDB(cfg)

	daemons.Assets(sqli)
	//daemons.Base(sqli)

	tickers := time.NewTicker(5 * time.Second) // Вызываем тикер. Он же является каналом
	go func() { // Рутинная задача
		for {
			select { // Ожидаем данных
			case <- tickers.C:
				daemons.Base(sqli)
			}
		}
	}()

	// Заглушки
	http.HandleFunc("/", web.Base)
	web.LoadHttp("/api", sqli, daemons.Api)
	web.LoadUHttp("/site/login", sqli, web.UserLogin)

	// Воркеры
	//http.HandleFunc("/scripts/",  func(w http.ResponseWriter, r *http.Request) {
	//	scripts.Main(w, r, redisSrv, db)
	//})

	// Прослушиваем порт из конфига
	fmt.Println("Server started on "+cfg.Port)
	http.ListenAndServe(":"+cfg.Port, nil)
}
