package main

import (
	"config"
	"prep"
	"time"
	"fmt"
	"net/http"
	"daemons"
	"web"
)

func main() {
	// Нуны данные для подключения
	cfg := config.Parser()

	// Делаем коннекты с базой
	sqli, r := prep.InitDB(cfg)

	tickers := time.NewTicker(1 * time.Second) // Вызываем тикер. Он же является каналом
	quit := make(chan int) // Создаем канал для обрыва работы
	go func() { // Рутинная задача
		for {
			select { // Ожидаем данных
			case <- tickers.C:
				daemons.Base(sqli, r)
			case <- quit: // Заканчиваем работу (когда и зачем - неясно)
				tickers.Stop()
				close(quit)
				return
			}
		}
	}()
	if true == false { // На случай апокалипсиса
		quit <- 0 // Посылаем данные в канал о завершении работы
	}

	// Заглушки
	http.HandleFunc("/", web.Base)

	// Воркеры
	//http.HandleFunc("/scripts/",  func(w http.ResponseWriter, r *http.Request) {
	//	scripts.Main(w, r, redisSrv, db)
	//})

	// Прослушиваем порт из конфига
	fmt.Println("Server started on "+cfg.Port)
	http.ListenAndServe(":"+cfg.Port, nil)
}
