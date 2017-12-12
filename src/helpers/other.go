package helpers

import (
	"strconv"
	"bluemonday"
	"reflect"
	"strings"
)

func FloatToString(input_num float64) string {
	// to convert a float number to a string
	return strconv.FormatFloat(input_num, 'f', 6, 64)
}

func SoftCleaner(data map[string]interface{}, del bool) map[string]interface{} {
	clean := bluemonday.UGCPolicy()
	if len(data) > 0 {
		for key, val := range data {
			if val == nil {
				delete(data, key)
			} else {
				if reflect.TypeOf(val).String() == "string" {
					data[key] = strings.Replace(val.(string), "<", "&lt", -1)
					data[key] = strings.Replace(val.(string), ">", "&gt", -1)
					if val == nil {
						delete(data, key)
					}
					if del && val == "" {
						delete(data, key)
					}
				}
				if reflect.TypeOf(val).String() == "struct" || reflect.TypeOf(val).String() == "interface" || reflect.TypeOf(val).String() == "map[string]interface {}" {
					data[key] = SoftCleaner(val.(map[string]interface{}), del)
				}
				if reflect.TypeOf(val).String() == "string" && data[key] != nil{
					data[key] = clean.Sanitize(data[key].(string))
				}
			}
		}
	}
	return data
}