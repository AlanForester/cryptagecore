package external

import (
	"net/http"
	"fmt"
	"encoding/json"
	"io/ioutil"
	"time"
	"config"
)


func Request() config.Result {
	start := time.Now().UnixNano()
	resp, err := do()
	pre := time.Now().UnixNano()
	if err == nil {
		var response config.Result
		r, _ := ioutil.ReadAll(resp.Body)
		pre2 := time.Now().UnixNano()
		err = json.Unmarshal(r, &response)
		stop := time.Now().UnixNano()
		fmt.Println("a", pre-start, "pre2", pre2-start, "stop", stop-start)
		return response
	} else {
		fmt.Println(err.Error())
		return config.Result{}
	}
}

func GetPairs() config.Pairs {
	resp, err := http.Get("https://api.cryptowat.ch/pairs")
	if err == nil {
		var response config.Pairs
		r, _ := ioutil.ReadAll(resp.Body)
		err = json.Unmarshal(r, &response)
		return response
	} else {
		fmt.Println(err.Error())
		return config.Pairs{}
	}
}

func GetMarkets() config.Markets {
	resp, err := http.Get("https://api.cryptowat.ch/markets")
	if err == nil {
		var response config.Markets
		r, _ := ioutil.ReadAll(resp.Body)
		err = json.Unmarshal(r, &response)
		return response
	} else {
		fmt.Println(err.Error())
		return config.Markets{}
	}
}

func GetExchanges() config.Exchanges {
	resp, err := http.Get("https://api.cryptowat.ch/exchanges")
	if err == nil {
		var response config.Exchanges
		r, _ := ioutil.ReadAll(resp.Body)
		err = json.Unmarshal(r, &response)
		return response
	} else {
		fmt.Println(err.Error())
		return config.Exchanges{}
	}
}



func do() (*http.Response, error) {
	resp, err := http.Get("https://api.cryptowat.ch/markets/summaries")
	return resp, err
}

func GetAssets() config.Assets {
	resp, err := http.Get("https://api.cryptowat.ch/assets")
	if err == nil {
		var response config.Assets
		r, _ := ioutil.ReadAll(resp.Body)
		err = json.Unmarshal(r, &response)
		return response
	} else {
		fmt.Println(err.Error())
		return config.Assets{}
	}
}