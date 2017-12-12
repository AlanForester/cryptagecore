package web

import (
	"net/http"
	"fmt"
	"sqlx"
	"encoding/json"
	"config"
	"helpers"
)

// Хандлер - заглушка. В планах логировать все обращения к нему
func Base(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Forbidden %s", r.URL.Path[1:])
}

func UserLogin(w http.ResponseWriter, r *http.Request, db *sqlx.DB, values map[string]interface{}) {
	result := make(map[string]interface{})

	if values["email"] != nil && values["password"] != nil {
		var err error
		var users config.Users
		//users, err := helpers.GetUserByLP(values["email"].(string), values["password"].(string), db)
		if err == nil {
			is, res := helpers.SetAuth(users)
			if is {
				result["valid"] = true
				result["token"] = res
			} else {
				result["valid"] = false
				result["error"] = "internal_error"
			}
		} else {
			result["valid"] = false
			result["error"] = "no_user"
		}
	} else {
		result["valid"] = false
		result["error"] = "no_data"
	}
	out, _ := json.Marshal(result)
	fmt.Fprintln(w, string(out))
	return
}