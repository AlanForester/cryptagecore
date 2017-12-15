package bittrex

import "decimal"

type Distribution struct {
	Distribution   []BalanceD      `json:"Distribution"`
	Balances       decimal.Decimal `json:"Balances"`
	AverageBalance decimal.Decimal `json:"AverageBalance"`
}

type BalanceD struct {
	BalanceD decimal.Decimal `json:"Balance"`
}
