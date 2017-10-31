package prep

/*
	db - установка соединений с базами
*/

import (
	_ "pq"
	"sqlx"
	"config"
	"redis.v4"
)

// Он, главный. Инфа сотка
func InitDB(cfg config.Settings) (*sqlx.DB, *redis.Client) {
	// Хотим ПГ
	sqli := startPG(cfg)
	// И немножко редиса
	r := RedisOn(cfg)

	return sqli, r
}

func RedisOn(config config.Settings) *redis.Client {
	client := redis.NewClient(&redis.Options{
		Addr:     config.Redis.Host+":"+config.Redis.Port,
		Password: config.Redis.Password, // нам нечего прятать
		DB:       config.Redis.Database,  // и база у нас по дефолту
	})

	return client
}

// Подключение к PG
func startPG(cfg config.Settings) *sqlx.DB {
	// Взлетаем
	db, err := sqlx.Connect("postgres", "postgres://" + cfg.Postgre.User + ":" + cfg.Postgre.Passw + "@" + cfg.Postgre.Host + ":" + cfg.Postgre.Port + "/" + cfg.Postgre.Database + "?sslmode=disable")
	if err != nil {
		return nil
	} else {
		return db
	}
}
