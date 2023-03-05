package main

import (
	"encoding/binary"
	"log"
	"math/rand"
	"pylon/server"
	"time"

	_ "github.com/glebarez/go-sqlite"
)

func test() {
	var x uint32 = 354

	bytes := [4]byte{}

	binary.LittleEndian.PutUint32(bytes[0:4], x)

	for _, bt := range bytes {
		print(bt, " ")
	}
	println()

	y := binary.LittleEndian.Uint32(bytes[0:4])
	println(y)
}

func main() {
	log.Println("Server started running")
	log.SetFlags(0) // Temporary
	rand.Seed(time.Now().UnixNano())

	s := server.NewServer()
	s.Run()
}
