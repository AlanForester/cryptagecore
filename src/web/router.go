package web

import (
	"sqlx"
	"net/http"
	"jwt"
	"fmt"
	"config"
	"strconv"
	"encoding/json"
	"reflect"
	"strings"
	"bluemonday"
)

func SetHeaders(w http.ResponseWriter, code int)  {
	if code != 200 {
		w.WriteHeader(code)
	} else {
		w.Header().Set("Access-Control-Allow-Origin", "*")
		w.Header().Set("Access-Control-Allow-Headers", "Content-Type, Access-Control-Allow-Headers, Authorization")
		w.Header().Set("Access-Control-Allow-Methods", "GET,POST,OPTIONS")
	}
}

func GetAuth(r *http.Request) (bool, *jwt.Claims) { // valid, data
	if r.Header.Get("Authorization") != "" {
		conf := config.Parser()
		al := jwt.HmacSha512(conf.Jwt)

		if al.Validate(r.Header.Get("Authorization")) == nil {
			res, err := al.Decode(r.Header.Get("Authorization"))
			if err == nil {
				return true, res
			} else {
				return false, nil
			}
		} else {
			return false, nil
		}
	} else {
		return false, nil
	}
}

func SetAuth(user config.Users) (bool, string) {
	conf := config.Parser()
	al := jwt.HmacSha512(conf.Jwt)

	claims := jwt.NewClaim()
	claims.Set("ID", strconv.FormatInt(user.Id, 64))
	claims.Set("Role", user.Role)

	token, err := al.Encode(claims)
	if err == nil {
		return true, token
	} else {
		return false, ""
	}
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

func GetFormValues(data *http.Request) map[string]interface{} {
	result := make(map[string]interface{})
	decoder := json.NewDecoder(data.Body)
	err := decoder.Decode(&result)

	if err == nil {
		result = SoftCleaner(result, false)
		return result
	}
	return nil
}

func LoadHttp(route string, db *sqlx.DB, f func(http.ResponseWriter, *http.Request, *sqlx.DB, map[string]interface{}, *jwt.Claims)) {
	http.HandleFunc(route, func(w http.ResponseWriter, r *http.Request) {
		if r.Method == "POST" {
			SetHeaders(w, 200)
			if valid, data := GetAuth(r); valid == false {
				fmt.Fprintln(w, "{\"valid\": false, \"error\": \"Auth error\"}")
			} else {
				values := GetFormValues(r)

				f(w, r, db, values, data)
			}
		} else {
			SetHeaders(w, 200)
			return
		}
	})
}

func LoadUHttp(route string, db *sqlx.DB, f func(http.ResponseWriter, *http.Request, *sqlx.DB, map[string]interface{}))  {
	http.HandleFunc(route, func(w http.ResponseWriter, r *http.Request) {
		if r.Method == "POST" {
			SetHeaders(w, 200)
			values := GetFormValues(r)
			f(w, r, db, values)
		} else {
			SetHeaders(w, 200)
			return
		}
	})
}
