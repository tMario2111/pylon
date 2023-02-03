package main

import (
	"database/sql"
	"log"
	"pylon/server"

	_ "github.com/glebarez/go-sqlite"
)

func test() {
	db, err := sql.Open("sqlite", "database.db")
	if err != nil {
		println(err.Error())
		return
	}
	_, err = db.Exec(`
	CREATE TABLE IF NOT EXISTS users
	(
		id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
		username TEXT NOT NULL,
		email TEXT NOT NULL UNIQUE,
		password TEXT NOT NULL,
		public_key TEXT NOT NULL
	);`)
	if err != nil {
		println(err.Error())
		return
	}

	//stmt, err := db.Prepare("INSERT INTO users (username, email, password, public_key) VALUES (?, ?, ?, ?);")
	//if err != nil {
	//	println(err.Error())
	//	return
	//}
	// _, err = stmt.Exec("Costel", "costel@gsu.net", "cevaparola", "cevacheiepublica")
	// if err != nil {
	//	println(err.Error())
	//	return
	//}

	rows, err := db.Query("SELECT username, email, password, public_key FROM users")
	if err != nil {
		println(err.Error())
		return
	}
	defer rows.Close()

	var name, email, password, key string
	for rows.Next() {
		err := rows.Scan(&name, &email, &password, &key)
		if err != nil {
			println(err.Error())
			return
		}
		println(name, " ", email, " ", password, " ", key)
	}
}

func main() {
	log.SetFlags(0) // Temporary

	s := server.NewServer()
	s.Run()
}
