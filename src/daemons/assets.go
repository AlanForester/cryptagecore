package daemons

import (
	"sqlx"
	"net/http"
	"encoding/json"
	"strings"
	"time"
	"strconv"
	"go-hitbtc"
)

type AStruct struct { // DEPRECATED
	Id string `json:"id"`
	Name string `json:"name"`
	Symbol string `json:"symbol"`
	Price string `json:"price_btc" bson:"price_btc"`
}

// Воруем данные с одного из сервисов для получения ассетов
func Assets(db *sqlx.DB) { // DEPRECATED
	data := []AStruct{}
	r, err := http.Get("https://api.coinmarketcap.com/v1/ticker/?limit=0")
	if err == nil {
		defer r.Body.Close()

		json.NewDecoder(r.Body).Decode(&data)
	}
	if len(data) > 0 {
		for _, v := range data {
			price, _ := strconv.ParseFloat(v.Price, 0)
			a, e := db.Query("SELECT set_asset($1, $2, $3, $4)", strings.ToLower(v.Symbol), v.Name, time.Now().Format(time.RFC3339), price)
			if e == nil {
				a.Close()
			} else {
				panic(e)
			}
		}
	}
}

func HitAssets(db *sqlx.DB, hit *hitbtc.HitBtc) { // DEPRECATED
	cur, _ := hit.GetCurrencies()
	for _, v := range cur {
		a, e := db.Query("SELECT set_asset($1, $2, $3, $4)", strings.ToLower(v.Id), v.FullName, time.Now().Format(time.RFC3339), 0)
		if e == nil {
			a.Close()
		} else {
			panic(e)
		}
	}
}
