package helpers

import (
	"strconv"
	"config"
	"sqlx"
	"amqp"
	"log"
	"bytes"
	"encoding/gob"
	"time"
)

func FloatToString(input_num float64) string {
	// to convert a float number to a string
	return strconv.FormatFloat(input_num, 'f', 6, 64)
}

func GetPairFromString(pair string, list []config.DBPair) (string, string) {
	for _, v := range list {
		if v.PairName == pair {
			return v.BaseKey, v.QuoteKey
		}
	}
	return "", ""
}

func CheckPairs(data []config.CD, list []config.DBPair) []config.CD {
	for k, v := range data {
		if v.DelimPair == "" {
			name1, name2 := GetPairFromString(v.Pair, list)
			data[k].DelimPair = name1 + "-" + name2
		}
	}
	return data
}

func GetPairs(db *sqlx.DB) ([]config.DBPair, map[string][]string) {
	result := []config.DBPair{}
	db.Select(&result, "SELECT * FROM pairs")
	res := make(map[string][]string)
	for _, v := range result {
		res[v.BaseKey + "-" + v.QuoteKey] = []string{strconv.FormatInt(int64(v.Id), 10), v.BaseName + "-" + v.QuoteName}
	}
	return result, res
}

func GetAssets(db *sqlx.DB) ([]config.DBAssets, map[string]string) {
	result := []config.DBAssets{}
	db.Select(&result, "SELECT * FROM assets")
	res := make(map[string]string)
	for _, v := range result {
		res[v.Symbol] = v.Name
	}
	return result, res
}

func PrepareEx (db *sqlx.DB) map[string][]string {
	prep := []config.DBExchanges{}
	result := make(map[string][]string)
	db.Select(&prep, "SELECT CAST(id as varchar) as id, key FROM exchanges")
	if len(prep) > 0 {
		for _, v := range prep {
			result[v.Key] = []string{v.Id, v.Name}
		}
	}
	return result
}

func ChangeMQMode (c *amqp.Channel, name string) *amqp.Channel {
	err := c.ExchangeDeclare(name, "direct", true, false, false, false, nil)
	if err != nil {
		log.Fatalf("exchange.declare: %v", err)
	}
	return c
}

func AddMQ(name string, key string, c *amqp.Channel, data interface{}) {
	msg := amqp.Publishing{
		DeliveryMode: amqp.Persistent,
		Timestamp:    time.Now(),
		ContentType:  "application/json",
		Body:         GetBytes(data),
	}
	q, errq := c.QueueDeclare(
		name, // name
		true,   // durable
		false,   // delete when unused
		false,   // exclusive
		false,   // no-wait
		nil,     // arguments
	)
	if errq != nil {
		log.Fatalf("queue.publish: %v", errq)
	}
	err := c.Publish(name, q.Name, false, false, msg)
	if err != nil {
		log.Fatalf("basic.publish: %v", err)
	}
}

func GetBytes(key interface{}) []byte {
	var buf bytes.Buffer
	enc := gob.NewEncoder(&buf)
	err := enc.Encode(key)
	if err != nil {
		return nil
	}
	return buf.Bytes()
}