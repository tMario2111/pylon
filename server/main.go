package main

import (
	"log"
	"math/rand"
	"pylon/server"
	"time"

	_ "github.com/glebarez/go-sqlite"
)

func main() {
	log.Println("Server started running")
	log.SetFlags(0) // Temporary
	rand.Seed(time.Now().UnixNano())

	s := server.NewServer()
	s.Run()
}
