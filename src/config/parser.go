package config

/*
	parser - файл по работе с конфигурационным файлом сервера
*/

import (
	"os"
	"fmt"
	"encoding/json"
)

// Парсер парсит
func Parser() Settings  {
	// пЫременные
	var file *os.File
	var ferr error

	// Открываем
	file, ferr = os.Open("config.json")
	if ferr != nil {
		// У нас оооооооооогромные проблемы
		panic("CONFIG CANT BE READ!")
	}

	// Перегоняем в json
	decoder := json.NewDecoder(file)

	// Пихаем в структуру
	fileconf := Settings{}
	err := decoder.Decode(&fileconf)

	// Ой, закрыть забыли
	defer file.Close()

	if err != nil {
		// Хрень ваш конфиг
		fmt.Println("error:", err)
	}
	return fileconf
}