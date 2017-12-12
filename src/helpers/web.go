package helpers

import (
	"net/http"
	"jwt"
	"config"
	"strconv"
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