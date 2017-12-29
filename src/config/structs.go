package config

import "time"

// Структурка конфига. Для обработки нового параметра из конфига - просто добавь его сюда
type Settings struct {
	Postgre struct {
		Host string `json:"host"`
		Port string `json:"port"`
		Passw string `json:"passw"`
		User string `json:"user"`
		Database string `json:"database"`
	}
	MQ struct{
		Login string `json:"login"`
		Password string `json:"password"`
		Host string `json:"host"`
		Port string `json:"port"`
	} `json:"mq"`
	Redis   struct {
		Password string  `json:"Password" bson:"Password"`
		Database int `json:"Database" bson:"Database"`
		Host     string  `json:"Host" bson:"Host"`
		Port     string  `json:"Port" bson:"Port"`
	}
	Mqmode bool `json:"mqmode"`
	Jwt string `json:"jwt"`
	Port string `json:"port"`
	Yobit bool `json:"yobit"`
}


// База пользователей в ПГ
type Users struct {
	Id int64 `json:"id"`
	Userlogin string `json:"userlogin" db:"userlogin"`
	Password string `json:"password" db:"password"`
	Email string `json:"email" db:"email"`
	Banned bool `json:"banned" db:"banned"`
	Username string `json:"username" db:"username"`
	Role int `json:"role" db:"role"`
	Settings string `json:"settings" db:"settings"`
	Created time.Time `db:"created" json:"created"`

}

// Пары в ПГ
type DBPair struct {
	Id int64 `json:"id" db:"id"`
	BaseKey string `json:"base_key" db:"base_key"`
	BaseName string `json:"base_name" db:"base_name"`
	QuoteKey string `json:"quote_key" db:"quote_key"`
	QuoteName string `json:"quote_name" db:"quote_name"`
	PairName string `json:"pair_name" db:"pair_name"`
	Time time.Time `json:"time" db:"time"`
}

// Ассеты в ПГ
type DBAssets struct {
	Id string `json:"id" db:"id"`
	Symbol string `json:"symbol" db:"symbol"`
	Name string `json:"name" db:"name"`
	Time time.Time `json:"time" db:"time"`
	Course float64 `json:"course" db:"course"`
}

// Обменники в ПГ
type DBExchanges struct {
	Id string `json:"id" db:"id"`
	Key string `json:"key" db:"key"`
	Name string `json:"name" db:"name"`
	Active bool `json:"active" db:"active"`
	Time time.Time `json:"time" db:"time"`
}

// Сигналы в ПГ
type Signal struct {
	Id int64 `json:"id" db:"id"`
	Name string `json:"name" db:"name"`
	UserId int64 `json:"user_id" db:"user_id"`
	Types int `json:"type" db:"type"`
	Exchange1 string `json:"exchange1" db:"exchange1"`
	Exchange2 string `json:"exchange2" db:"exchange2"`
	Asset1 string `json:"asset1" db:"asset1"`
	Asset2 string `json:"asset2" db:"asset2"`
	Asset3 string `json:"asset3" db:"asset3"`
	Data1 int `json:"data1" db:"data1"` // 1 - расхождение на больше внешний, 2 - расх. на меньше внешний, 3 - расх. на больше внутрн 4 - ...
	Data2 float64 `json:"data2" db:"data2"`
}

type CD struct { // Compare Data
	Market string `json:"market"`
	Pair string `json:"pair"`
	DelimPair string `json:"delimPair"`
	Bid float64 `json:"bid"`
	Ask float64 `json:"ask"`
	Last string `json:"last"`
	Volume string `json:"volume"`
	Pair1 string `json:"pair_1"`
	Pair2 string `json:"pair_2"`
}