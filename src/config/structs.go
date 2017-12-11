package config

import "time"

type Settings struct {
	Postgre struct {
		Host string `json:"host"`
		Port string `json:"port"`
		Passw string `json:"passw"`
		User string `json:"user"`
		Database string `json:"database"`
	}
	Redis   struct {
		Password string  `json:"Password" bson:"Password"`
		Database int `json:"Database" bson:"Database"`
		Host     string  `json:"Host" bson:"Host"`
		Port     string  `json:"Port" bson:"Port"`
	}
	Jwt string `json:"jwt"`
	Port string `json:"port"`
}

type Users struct {
	Id int64 `json:"id"`
	Username string `json:"username"`
	Password string `json:"password"`
	Email string `json:"email"`
	Banned bool `json:"banned"`
	Name string `json:"name"`
	Role int `json:"role"`
	CreatedAt time.Time `db:"date" json:"createdAt"`

}

type InsertTickers struct {
	Market string
	Valute string
	Value float64
	Ask float64
	Bid float64
	Time time.Time
}