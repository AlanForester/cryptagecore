package daemons

import (
	"time"
	"strings"
	"sqlx"
	"helpers"
	"go-bittrex"
	"go-poloniex"
	"fmt"
)

func Base(db *sqlx.DB, b *bittrex.Bittrex, p *poloniex.Poloniex) {
	bit, eb := b.GetMarketSummaries()
	if eb != nil {
		fmt.Println("CMS Битрикс не желает работать:", eb.Error())
	} else {
		ex := "bittrex"
		for _, v := range bit {
			name := strings.ToLower(v.MarketName)
			go helpers.SaveTickers(db, ex, name, v.Last.String(), v.High.String(), v.Low.String(), time.Now().Format(time.RFC3339), v.Volume.String())
		}
	}

	pol, ep := p.GetTickers()
	if ep != nil {
		fmt.Println("Полоникс наполонил: ", ep.Error())
	} else {
		for k, v := range pol {
			name := strings.ToLower(strings.Replace(k, "_", "-", -1))
			go helpers.SaveTickers(db, "poloniex", name, v.Last.String(), v.HighestBid.String(), v.LowestAsk.String(), time.Now().Format(time.RFC3339), v.BaseVolume.String())
		}
	}

	if len(bit) > 0 && len(pol) > 0 {
		startSql := "INSERT INTO divergent (pair_id, exchanges1_id, exchanges2_id, diff, time) VALUES "
		var sqlStr string

		for _,bv := range bit {
			for pk,pv := range pol {
				name := strings.ToLower(strings.Replace(pk, "_", "-", -1))
				if strings.ToLower(bv.MarketName) == name {
					var summ float64
					var bid float64
					var ask float64

					bid, _ = bv.Bid.Float64()
					ask, _ = pv.LowestAsk.Float64()
					if bid > ask {
						summ = (bid * 100 / ask) - 100
					}
					bid, _ = pv.HighestBid.Float64()
					ask, _ = bv.Ask.Float64()
					if bid > ask {
						summ = (bid * 100 / ask) - 100
					}

					sqlStr += "(get_pair_id('" + name + "'), get_exchange_id('bittrex'), get_exchange_id('poloniex'), " + helpers.FloatToString(summ) + ", '" + time.Now().Format(time.RFC3339) + "'),"
					break
				}
			}
		}
		sqlStr = startSql + sqlStr
		sqlStr = sqlStr[0:len(sqlStr)-1]
		sqlStr = strings.TrimSuffix(sqlStr, ",")
		//start := time.Now().UnixNano()
		helpers.SaveQuery(sqlStr, db)
	}
}
