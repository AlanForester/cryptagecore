package web

import (
	"net/http"
	"sqlx"
	"jwt"
	"config"
	"time"
	"fmt"
	"encoding/json"
	"helpers"
)

func Api(w http.ResponseWriter, r *http.Request, db *sqlx.DB, _ map[string]interface{}, _ *jwt.Claims)  {
	var result config.ApiData
	result.Valid = true
	tt := time.Now().Add(time.Minute * -5).Format(time.RFC3339)
	e := db.Select(&result.Result, "SELECT e1.name as e1_name, e2.name as e2_name, MIN(divergent.time) as time, AVG(divergent.diff) as diff, p.pair_name as p_name FROM divergent LEFT JOIN exchanges AS e1 ON (exchanges1_id=e1.id) LEFT JOIN exchanges AS e2 ON (exchanges2_id=e2.id) LEFT JOIN pairs as p ON (pair_id=p.id) WHERE divergent.time > '" + tt + "' GROUP BY e1.name, e2.name, p.pair_name ORDER BY diff DESC LIMIT 200")
	if e != nil {
		fmt.Println(e)
	}

	res, e := json.Marshal(result)
	//fmt.Println(string(res))
	fmt.Fprintf(w, string(res))
	return
}

func Markets(w http.ResponseWriter, r *http.Request, db *sqlx.DB, _ map[string]interface{}, _ *jwt.Claims) {
	var result config.MarketsData
	result.Valid = true
	e := db.Select(&result.Result, "SELECT id, title FROM exchanges ORDER BY id DESC")
	if e != nil {
		fmt.Println(e)
	}

	res, e := json.Marshal(result)
	//fmt.Println(string(res))
	fmt.Fprintf(w, string(res))
	return
}

func Pairs(w http.ResponseWriter, r *http.Request, db *sqlx.DB, _ map[string]interface{}, _ *jwt.Claims) {
	var result config.MarketsData
	result.Valid = true
	e := db.Select(&result.Result, "SELECT * FROM pairs ORDER BY id DESC")
	if e != nil {
		fmt.Println(e)
	}

	res, e := json.Marshal(result)
	//fmt.Println(string(res))
	fmt.Fprintf(w, string(res))
	return
}

func Actives(w http.ResponseWriter, r *http.Request, db *sqlx.DB, _ map[string]interface{}, _ *jwt.Claims) {
	fmt.Fprintf(w, "{'valid': true, result: [{'id': 13, 'name': 'Bitcoin', count: 123},{'id': 1, 'name': 'Зелень', count: 3}]}")
}

func Settings(w http.ResponseWriter, r *http.Request, db *sqlx.DB, data map[string]interface{}, _ *jwt.Claims)  {
	result := make(map[string]interface{})
	if data["user"] != nil {
		result["valud"] = true
		if data["data"] != nil {
			db.Query("UPDATE users SET settings=$1 WHERE id=$1", data["data"], data["user"].(int64))
		} else {
			var u config.Users
			db.Select(&u, "SELECT settings, id FROM users WHERE id=$1", data["user"].(int64))
		}
		out, _ := json.Marshal(result)
		fmt.Fprintln(w, string(out))
		return
	} else {
		helpers.SetHeaders(w, 403)
		return
	}
}
