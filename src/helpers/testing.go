package helpers

import (
	"sqlx"
	"go-hitbtc"
	"strings"
)

func ControlPairs (db *sqlx.DB, hit *hitbtc.HitBtc) {
	testdata := make(map[string]interface{})
	symb, e := hit.GetSymbols()
	if e != nil {
		panic(e)
	} else {
		for _, v := range symb {
			db.Get(&testdata, "SELECT get_pair_id($1, $2)", strings.ToLower(v.BaseCurrency), strings.ToLower(v.QuoteCurrency))
		}
	}
}
