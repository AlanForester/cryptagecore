package web

import (
	"sqlx"
	"net/http"
	"jwt"
	"fmt"
	"encoding/json"
	"helpers"
)

func GetFormValues(data *http.Request) map[string]interface{} {
	result := make(map[string]interface{})
	decoder := json.NewDecoder(data.Body)
	err := decoder.Decode(&result)

	if err == nil {
		result = helpers.SoftCleaner(result, false)
		return result
	}
	return nil
}

func LoadHttp(route string, db *sqlx.DB, f func(http.ResponseWriter, *http.Request, *sqlx.DB, map[string]interface{}, *jwt.Claims)) {
	http.HandleFunc(route, func(w http.ResponseWriter, r *http.Request) {
		if r.Method == "POST" {
			helpers.SetHeaders(w, 200)
			if valid, data := helpers.GetAuth(r); valid == false {
				fmt.Fprintln(w, "{\"valid\": false, \"error\": \"Auth error\"}")
			} else {
				values := GetFormValues(r)

				f(w, r, db, values, data)
			}
		} else {
			helpers.SetHeaders(w, 200)
			return
		}
	})
}

func LoadUHttp(route string, db *sqlx.DB, f func(http.ResponseWriter, *http.Request, *sqlx.DB, map[string]interface{}))  {
	http.HandleFunc(route, func(w http.ResponseWriter, r *http.Request) {
		if r.Method == "POST" {
			helpers.SetHeaders(w, 200)
			values := GetFormValues(r)
			f(w, r, db, values)
		} else {
			helpers.SetHeaders(w, 200)
			return
		}
	})
}
