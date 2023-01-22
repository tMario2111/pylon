package main

import (
	"log"
	"pylon/server"
)

func main() {
	log.SetFlags(0) // Temporary

	s := server.NewServer()
	s.Run()
}
