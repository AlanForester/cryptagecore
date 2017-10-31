package daemons

import (
	"fmt"
	"sqlx"
	"redis.v4"
)

func Base(sqli *sqlx.DB, r *redis.Client)  {
	fmt.Println("hello")
}
