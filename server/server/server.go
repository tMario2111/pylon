package server

import (
	"crypto/rsa"
	"crypto/x509"
	"encoding/pem"
	"io"
	"log"
	"net"
	pb "pylon/proto"
	"strconv"

	"google.golang.org/protobuf/proto"
)

type Message struct {
	content    []byte
	connection net.Conn
	publicKey  **rsa.PublicKey
}

type Server struct {
	listener       net.Listener
	quitChannel    chan struct{}
	messageChannel chan Message
	privateKey     *rsa.PrivateKey
	publicKey      *rsa.PublicKey
}

func NewServer() (server *Server) {
	server = new(Server)

	server.loadKeys()

	server.quitChannel = make(chan struct{})
	server.messageChannel = make(chan Message, 100) // TODO: No magic numbers

	return server
}

func (server *Server) loadKeys() {
	var block *pem.Block
	var err error

	block, _ = pem.Decode([]byte(RSA_PRIVATE_KEY))
	server.privateKey, err = x509.ParsePKCS1PrivateKey(block.Bytes)
	if err != nil {
		log.Fatal(err.Error())
	}

	block, _ = pem.Decode([]byte(RSA_PUBLIC_KEY))
	server.publicKey, err = x509.ParsePKCS1PublicKey(block.Bytes)
	if err != nil {
		log.Fatal(err.Error())
	}
}

func (server *Server) Run() {
	listener, err := net.Listen("tcp", "localhost:8888")
	if err != nil {
		log.Fatal(err.Error())
	}
	server.listener = listener
	defer server.listener.Close()

	go server.acceptClients()
	go server.processIncomingMessages()

	<-server.quitChannel
}

func (server *Server) acceptClients() {
	for {
		connection, err := server.listener.Accept()
		if err != nil {
			log.Println(err.Error())
			continue
		}
		log.Println("New client connected: ", connection.RemoteAddr())
		go server.read(connection)
	}
}

func (server *Server) read(connection net.Conn) {
	defer connection.Close()

	messagePart := messagePartKey
	bytesToRead := RSA_CIPHER_LEN

	data := make([]byte, READ_BUFFER_LIMIT)
	dataByteCount := 0

	buffer := make([]byte, READ_BUFFER_LIMIT)

	key := make([]byte, RSA_CIPHER_LEN)
	iv := make([]byte, RSA_CIPHER_LEN)
	signature := make([]byte, RSA_CIPHER_LEN)

	var clientPublicKey *rsa.PublicKey = nil

	for {
		bufferByteCount, err := connection.Read(buffer)
		if err != nil {
			if err != io.EOF {
				log.Println(err.Error())
			}
			return
		}
		data = append(data[:dataByteCount], buffer[:bufferByteCount]...)
		dataByteCount += bufferByteCount

		for dataByteCount >= bytesToRead {
			var newBytesToRead int

			switch messagePart {
			case messagePartKey:
				key = data[:bytesToRead]
				newBytesToRead = RSA_CIPHER_LEN

			case messagePartIv:
				iv = data[:bytesToRead]
				newBytesToRead = RSA_CIPHER_LEN

			case messagePartSignature:
				signature = data[:bytesToRead]
				newBytesToRead = MESSAGE_HEADER_LEN

			case messagePartHeader:
				var bytesToReadUint64 uint64
				bytesToReadUint64, err = strconv.ParseUint(
					string(data[:bytesToRead]), MESSAGE_HEADER_BASE, 32)
				if err != nil {
					log.Println(err.Error())
					return
				}
				newBytesToRead = int(bytesToReadUint64)

			case messagePartContent:
				plaintext, err :=
					unprocessClientMessage(key, iv, signature, data[:bytesToRead], server.privateKey, clientPublicKey)
				if err != nil {
					log.Println(err.Error())
					continue
				}
				server.messageChannel <- Message{content: plaintext, connection: connection, publicKey: &clientPublicKey}
				newBytesToRead = RSA_CIPHER_LEN
			}

			data = data[bytesToRead:]
			messagePart++
			if messagePart == messagePartContent+1 {
				messagePart = messagePartKey
			}
			dataByteCount -= bytesToRead
			bytesToRead = newBytesToRead
		}
	}
}

func (server *Server) processIncomingMessages() {
	for messageContainer := range server.messageChannel {
		connection := messageContainer.connection
		messageBytes := messageContainer.content

		message := &pb.ClientMessage{}
		err := proto.Unmarshal(messageBytes, message)
		if err != nil {
			println(err.Error())
		}
		switch t := message.Variant.(type) {
		case *pb.ClientMessage_SendPublicKey_:
			block, _ := pem.Decode([]byte(t.SendPublicKey.KeyPem))
			*messageContainer.publicKey, err = x509.ParsePKCS1PublicKey(block.Bytes)
			if err != nil {
				log.Println(err.Error())
				return
			}
			println("Key exchange successful")
			newMessage, err := processServerMessage(&pb.ServerMessage{
				Variant: &pb.ServerMessage_ConfirmKeyExchange_{
					ConfirmKeyExchange: &pb.ServerMessage_ConfirmKeyExchange{}}},
				*messageContainer.publicKey, server.privateKey)
			if err != nil {
				log.Println(err.Error())
				return
			}
			connection.Write(newMessage)
		}
	}
}