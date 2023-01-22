package server

import "strconv"

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

func getLenghtAsBase16(str []byte) []byte {
	size := strconv.FormatUint(uint64(len(str)), MESSAGE_HEADER_BASE)
	for len(size) < MESSAGE_HEADER_LEN {
		size = "0" + size
	}
	return []byte(size)
}
