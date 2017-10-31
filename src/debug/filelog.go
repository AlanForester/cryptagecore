package debug

import (
	"os"
	"fmt"
	"time"
	"strconv"
	"net/http"
	"encoding/json"
)

func Save (from string, r *http.Request) {
	// Получаем текущий год, месяц, день
	year, month, day := time.Now().Date()

	johnCena := time.Now() // Ибо his TIME is NOW()
	os.Mkdir("logs", 0755)

	var data string
	if r.Method != "POST" {
		data = r.RequestURI
	} else {
		r.ParseForm()
		tmp, _ := json.Marshal(r.Form)
		data = string(tmp)
	}

	host := r.RemoteAddr
	if r.Header.Get("X-Real-IP") != "" {
		host = r.Header.Get("X-Real-IP")
	}

	f, err := os.OpenFile("logs/log-"+strconv.Itoa(day)+"-"+strconv.Itoa(int(month))+"-"+strconv.Itoa(year)+".log", os.O_CREATE|os.O_APPEND|os.O_WRONLY, 0666)

	defer f.Close()

	if err == nil {
		if _, err = f.WriteString(johnCena.String() + ";" + from + ";" + host + ";" + r.Method + ";" + data + "\n"); err != nil {
			fmt.Println(err)
		}
	} else {
		fmt.Println(err)
	}
}