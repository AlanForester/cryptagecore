package external

import (
	"net/http"
	"fmt"
	"encoding/json"
	"io/ioutil"
	"time"
)

type Summary struct {
	Price struct {
		Last float64 `json:"last"`
		High float64 `json:"high"`
		Low float64 `json:"low"`
		Change struct {
			Percentage float64 `json:"percentage"`
			Absolute float64 `json:"absolute"`
		} `json:"change"`
	} `json:"price"`
	Volume float64 `json:"volume"`
}

type Pairs struct {
	Result []struct {
		Key string `json:"symbol"`
		Base struct {
			Key string `json:"symbol"`
			Name string `json:"name"`
		} `json:"base"`
		Quote struct {
			Key string `json:"symbol"`
			Name string `json:"name"`
		} `json:"quote"`
	} `json:"result"`
}

type Markets struct {
	Result []struct {
		Exchange string `json:"exchange"`
		Pair string `json:"pair"`
		Active bool `json:"active"`
	} `json:"result"`
}

type Exchanges struct {
	Result []struct {
		Key string `json:"symbol"`
		Name string `json:"name"`
		Active bool `json:"active"`
	}
}

type Result struct {
	Result map[string]Summary `json:"result"`
}

type AList struct {
	Symbol string `json:"symbol"`
	Name string `json:"name"`
}

type Assets struct {
	Result []AList
}

func Request() Result {
	start := time.Now().UnixNano()
	resp, err := do()
	pre := time.Now().UnixNano()
	if err == nil {
		var response Result
		r, _ := ioutil.ReadAll(resp.Body)
		pre2 := time.Now().UnixNano()
		err = json.Unmarshal(r, &response)
		stop := time.Now().UnixNano()
		fmt.Println("a", pre-start, "pre2", pre2-start, "stop", stop-start)
		return response
	} else {
		fmt.Println(err.Error())
		return Result{}
	}
}

func GetPairs() Pairs {
	resp, err := http.Get("https://api.cryptowat.ch/pairs")
	if err == nil {
		var response Pairs
		r, _ := ioutil.ReadAll(resp.Body)
		err = json.Unmarshal(r, &response)
		return response
	} else {
		fmt.Println(err.Error())
		return Pairs{}
	}
}

func GetMarkets() Markets {
	resp, err := http.Get("https://api.cryptowat.ch/markets")
	if err == nil {
		var response Markets
		r, _ := ioutil.ReadAll(resp.Body)
		err = json.Unmarshal(r, &response)
		return response
	} else {
		fmt.Println(err.Error())
		return Markets{}
	}
}

func GetExchanges() Exchanges {
	resp, err := http.Get("https://api.cryptowat.ch/exchanges")
	if err == nil {
		var response Exchanges
		r, _ := ioutil.ReadAll(resp.Body)
		err = json.Unmarshal(r, &response)
		return response
	} else {
		fmt.Println(err.Error())
		return Exchanges{}
	}
}



func do() (*http.Response, error) {
	resp, err := http.Get("https://api.cryptowat.ch/markets/summaries")
	return resp, err
}

func GetAssets() Assets {
	resp, err := http.Get("https://api.cryptowat.ch/assets")
	if err == nil {
		var response Assets
		r, _ := ioutil.ReadAll(resp.Body)
		err = json.Unmarshal(r, &response)
		return response
	} else {
		fmt.Println(err.Error())
		return Assets{}
	}
}