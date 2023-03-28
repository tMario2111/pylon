package main

import (
	"log"
	"math/rand"
	"pylon/server"
	"time"

	_ "github.com/glebarez/go-sqlite"
)

func main() {
	log.SetFlags(2 | 3)
	log.Println("Server started running")
	rand.Seed(time.Now().UnixNano())

	s := server.NewServer()
	s.Run()
}
