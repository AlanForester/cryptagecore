package helpers

import (
	"strconv"
	"config"
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