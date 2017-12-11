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
	UUid int `db:"pid" json:"PID"`
	Id string `json:"id"`
	Username string `json:"username"`
	Password string `json:"password"`
	Email string `json:"email"`
	Hidden bool `json:"hidden"`
	Banned bool `json:"banned"`
	Protected bool `json:"protected"`
	Name string `json:"name"`
	Gender string `json:"gender"`
	Avatar string `json:"avatar"`
	Role int `json:"role"`
	Posts int `json:"posts"`
	Other string `json:"other"`
	IP string `db:"ip" json:"ip"`
	CreatedAt time.Time `db:"date" json:"createdAt"`

	Rolesname string `db:"rolesname" json:"rolesname"`
	Rolesid   string `json:"rolesid" json:"rolesid"`
}

type InsertTickers struct {
	Market string
	Valute string
	Value float64
	Ask float64
	Bid float64
	Time time.Time
}