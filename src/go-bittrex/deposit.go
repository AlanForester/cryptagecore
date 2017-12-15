package bittrex

import "decimal"

type Deposit struct {
	Id            int64           `json:"Id"`
	Amount        decimal.Decimal `json:"Amount"`
	Currency      string          `json:"Currency"`
	Confirmations int             `json:"Confirmations"`
	LastUpdated   jTime           `json:"LastUpdated"`
	TxId          string          `json:"TxId"`
	CryptoAddress string          `json:"CryptoAddress"`
}
