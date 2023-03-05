package server

import (
	"math/rand"
)

const (
	MESSAGE_HEADER_BASE = 16
	MESSAGE_HEADER_LEN  = 4
	AES_KEY_LEN         = 32
	RSA_CIPHER_LEN      = 256
	READ_BUFFER_LIMIT   = 2048
)

type messagePart int

const (
	messagePartKey       messagePart = 0
	messagePartIv        messagePart = 1
	messagePartSignature messagePart = 2
	messagePartHeader    messagePart = 3
	messagePartContent   messagePart = 4
)

func clearBytes(data *[]byte) {
	for i := 0; i < len(*data); i++ {
		(*data)[i] = 0
	}
}

func GenerateEmailCode() string {
	characters := "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
	code := make([]byte, 8)
	for i := 0; i < 8; i++ {
		code[i] = characters[rand.Intn(len(characters))]
	}
	return string(code)
}
