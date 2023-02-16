package server

import (
	"database/sql"

	_ "github.com/glebarez/go-sqlite"
)

func newDb() (*sql.DB, error) {
	db, err := sql.Open("sqlite", "database.db")
	if err != nil {
		return nil, err
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
		return nil, err
	}

	return db, nil
}
