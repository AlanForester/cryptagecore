package helpers

import (
	"sqlx"
	"fmt"
	"time"
	"strings"
)

func SaveTickers(db *sqlx.DB, key1 string, key2 string, price string, hi string, low string, t string, volume string) { // exch, pair, price, ask, bid, time
	keys := strings.Split(key2, "-")
	if len(keys) == 2 {
		fmt.Println(key1, keys[0], keys[1], price, hi, low, t, volume)
		a, e := db.Query("SELECT save_tikers($1, $2, $3, $4, $5, $6, $7, $8)", key1, keys[0], keys[1], price, hi, low, t, volume)
		if e == nil {
			a.Close()
		} else {
			panic(e)
		}
	}
}

func SaveInternal(db *sqlx.DB, asset1 string, asset2 string, asset3 string, percent float64, exchange string)  {
	a, e := db.Query("SELECT save_internal($1, $2, $3, $4, $5, $6)", asset1, asset2, asset3, percent, exchange, time.Now().Format(time.RFC3339))
	if e == nil {
		a.Close()
	} else {
		panic(e)
	}
}

func SaveQuery(data string, db *sqlx.DB)  {
	a, e := db.Query(data)
	if e != nil {
		fmt.Println(e)
	} else {
		a.Close()
	}
}