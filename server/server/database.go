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
	);

	CREATE TABLE IF NOT EXISTS chats
	(
		id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
		name TEXT,
		creator_id INTEGER NOT NULL
	);
	
	CREATE TABLE IF NOT EXISTS messages
	(
		id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
		user_id INTEGER NOT NULL,
		chat_id INTEGER NOT NULL,
		content TEXT NOT NULL,
		timestamp INTEGER NOT NULL
	);

	CREATE TABLE IF NOT EXISTS participants
	(
		id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
		user_id INTEGER NOT NULL,
		chat_id INTEGER NOT NULL,
		shared_key TEXT NOT NULL
	);
	`)

	if err != nil {
		println(err.Error())
		return nil, err
	}

	return db, nil
}
