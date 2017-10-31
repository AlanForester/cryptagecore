package config

type Settings struct {
	Postgre struct {
		Host string `json:"host"`
		Port string `json:"port"`
		Passw string `json:"passw"`
		User string `json:"user"`
		Database string `json:"database"`
	}
	Redis   struct {
		Password string  `json:"Password" bson:"Password"`
		Database int `json:"Database" bson:"Database"`
		Host     string  `json:"Host" bson:"Host"`
		Port     string  `json:"Port" bson:"Port"`
	}
	Port string `json:"port"`
}
