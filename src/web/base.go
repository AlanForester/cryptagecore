package web

import (
	"net/http"
	"fmt"
)

// Хандлер - заглушка. В планах логировать все обращения к нему
func Base(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Forbidden %s", r.URL.Path[1:])
}
