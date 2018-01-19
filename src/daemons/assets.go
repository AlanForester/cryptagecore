package daemons

import (
	"sqlx"
	"net/http"
	"encoding/json"
	"strings"
	"time"
	"strconv"
	"go-hitbtc"
	"go-bittrex"
	"helpers"
	"go-poloniex"
	"fmt"
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

func UpdateAssets(b *bittrex.Bittrex, p *poloniex.Poloniex, h *hitbtc.HitBtc)  {
	fmt.Println("Обновление валют")
	// bittrex
	bc, be := b.GetCurrencies()
	if be == nil && len(bc) > 0 {
		for _, v := range bc {
			if v.IsActive {
				helpers.Dasset["bittrex_" + v.Currency] = true
			}
		}

	}
	// poloniex
	pc, pe := p.GetCurrencies()
	if pe == nil && len(pc.Pair) > 0 {
		for k, v := range pc.Pair {
			if v.Disabled == 0 && v.Frozen == 0 {
				helpers.Dasset["poloniex_" + k] = true
			}
		}
	}

	// hit
	cc, ce := h.GetCurrencies()
	if ce == nil && len(cc) > 0 {
		for _, v := range cc {
			if v.PayinEnabled && v.PayoutEnabled {
				helpers.Dasset["hitbtc_" + v.Id] = true
			}
		}
	}
}
