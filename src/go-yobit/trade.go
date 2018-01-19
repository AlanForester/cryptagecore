package yobit

type Trade struct {
	Success int `json:"success"`
	Error string `json:"error"`
	Return struct{
		Received float64 `json:"received"`
		Remains float64 `json:"remains"`
		OrderId int `json:"order_id"`
		Funds map[string]float64 `json:"funds"`
	} `json:"return"`
}