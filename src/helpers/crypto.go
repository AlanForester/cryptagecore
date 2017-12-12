package helpers

import (
	"sqlx"
	"fmt"
)

func SaveTickers(db *sqlx.DB, key1 string, key2 string, price string, hi string, low string, t string) {
	a, e := db.Query("SELECT save_tikers($1, $2, $3, $4, $5, $6)", key1, key2, price, hi, low, t)
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