package helpers

import (
	"strconv"
	"config"
	"sqlx"
)

func FloatToString(input_num float64) string {
	// to convert a float number to a string
	return strconv.FormatFloat(input_num, 'f', 6, 64)
}

func GetPairFromString(pair string, list []config.DBPair) (string, string) {
	for _, v := range list {
		if v.PairName == pair {
			return v.BaseKey, v.QuoteKey
		}
	}
	return "", ""
}

func CheckPairs(data []config.CD, list []config.DBPair) []config.CD {
	for k, v := range data {
		if v.DelimPair == "" {
			name1, name2 := GetPairFromString(v.Pair, list)
			data[k].DelimPair = name1 + "-" + name2
		}
	}
	return data
}

func GetPairs(db *sqlx.DB) ([]config.DBPair, map[string]string) {
	result := []config.DBPair{}
	db.Select(&result, "SELECT * FROM pairs")
	res := make(map[string]string)
	for _, v := range result {
		res[v.BaseKey + "-" + v.QuoteKey] = strconv.FormatInt(int64(v.Id), 10)
	}
	return result, res
}

func PrepareEx (db *sqlx.DB) map[string]string {
	prep := []config.DBExchanges{}
	result := make(map[string]string)
	db.Select(&prep, "SELECT CAST(id as varchar) as id, key FROM exchanges")
	if len(prep) > 0 {
		for _, v := range prep {
			result[v.Key] = v.Id
		}
	}
	return result
}
