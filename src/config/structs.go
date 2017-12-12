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

type ApiData struct {
	Valid bool `json:"valid"`
	Result []struct {
		Pairid int64 `json:"pairid" db:"pair_id"`
		Pairname string `json:"pair_name" db:"p_name"`
		BaseKey string `json:"base_key" db:"base_key"`
		QuoteKey string `json:"quote_key" db:"quote_key"`
		Ex1Name string `json:"ex1_name" db:"e1_name"`
		Ex2Name string `json:"ex2_name" db:"e2_name"`
		Diff float64 `json:"diff" db:"diff"`
		Time time.Time `json:"time" db:"time"`
	} `json:"result"`
}

type MarketsData struct {
	Valid bool `json:"valid"`
	Result []struct{
		Id int64 `json:"id" db:"id"`
		Title string `json:"title" db:"title"`
	} `json:"result"`
}

type PairData struct {
	Valid bool `json:"valid"`
	Result []struct{
		Id int64 `json:"id" db:"id"`
		Name string `json:"name" db:"pair_name"`
		BaseKey string `json:"basekey" db:"base_key"`
		BaseName string `json:"basename" db:"base_name"`
		QuoteKey string `json:"quotekey" db:"quote_key"`
		QuoteName string `json:"quotename" db:"quote_name"`
		Time time.Time `json:"time" db:"time"`
	} `json:"result"`
}

type Summary struct {
	Price struct {
		Last float64 `json:"last"`
		High float64 `json:"high"`
		Low float64 `json:"low"`
		Change struct {
			Percentage float64 `json:"percentage"`
			Absolute float64 `json:"absolute"`
		} `json:"change"`
	} `json:"price"`
	Volume float64 `json:"volume"`
}

type Pairs struct {
	Result []struct {
		Key string `json:"symbol"`
		Base struct {
			Key string `json:"symbol"`
			Name string `json:"name"`
		} `json:"base"`
		Quote struct {
			Key string `json:"symbol"`
			Name string `json:"name"`
		} `json:"quote"`
	} `json:"result"`
}

type Markets struct {
	Result []struct {
		Exchange string `json:"exchange"`
		Pair string `json:"pair"`
		Active bool `json:"active"`
	} `json:"result"`
}

type Exchanges struct {
	Result []struct {
		Key string `json:"symbol"`
		Name string `json:"name"`
		Active bool `json:"active"`
	}
}

type Result struct {
	Result map[string]Summary `json:"result"`
}

type AList struct {
	Symbol string `json:"symbol"`
	Name string `json:"name"`
}

type Assets struct {
	Result []AList
}