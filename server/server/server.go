package server

import (
	"crypto/rsa"
	"crypto/x509"
	"database/sql"
	"encoding/binary"
	"encoding/pem"
	"io"
	"log"
	"math/rand"
	"net"
	pb "pylon/proto"

	"google.golang.org/protobuf/proto"
)

const GUEST_USER_ID = 0

type User struct {
	id        int
	publicKey *rsa.PublicKey
	storage   map[string]string
}

type Message struct {
	content    []byte
	connection net.Conn
	user       *User
}

type Server struct {
	listener       net.Listener
	quitChannel    chan struct{}
	messageChannel chan Message
	privateKey     *rsa.PrivateKey
	publicKey      *rsa.PublicKey
	db             *sql.DB
}

func NewServer() (server *Server) {
	server = new(Server)

	db, err := newDb()
	if err != nil {
		log.Fatal(err.Error())
	}
	server.db = db

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

	user := User{id: GUEST_USER_ID, publicKey: nil, storage: make(map[string]string)}

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
				newBytesToRead = int(binary.LittleEndian.Uint32(data[:bytesToRead]))

			case messagePartContent:
				plaintext, err :=
					unprocessClientMessage(key, iv, signature, data[:bytesToRead], server.privateKey, user.publicKey)
				if err != nil {
					log.Println(err.Error())
					continue
				}
				server.messageChannel <- Message{
					content: plaintext, connection: connection, user: &user}
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
		user := messageContainer.user

		message := &pb.ClientMessage{}
		err := proto.Unmarshal(messageBytes, message)
		if err != nil {
			log.Println(err.Error())
		}
		switch t := message.Variant.(type) {

		case *pb.ClientMessage_SendPublicKey_:
			block, _ := pem.Decode([]byte(t.SendPublicKey.KeyPem))
			user.publicKey, err = x509.ParsePKCS1PublicKey(block.Bytes)
			if err != nil {
				log.Println(err.Error())
				return
			}
			newMessage, err := processServerMessage(&pb.ServerMessage{
				Variant: &pb.ServerMessage_ConfirmKeyExchange_{
					ConfirmKeyExchange: &pb.ServerMessage_ConfirmKeyExchange{}}},
				user.publicKey, server.privateKey)
			if err != nil {
				log.Println(err.Error())
				return
			}
			connection.Write(newMessage)

		case *pb.ClientMessage_LogIn_:
			server.logInResponse(&messageContainer, t.LogIn)

		case *pb.ClientMessage_AccountRegistration_:
			server.accountRegistrationResponse(&messageContainer, t.AccountRegistration)

		case *pb.ClientMessage_AccountRegistrationCode_:
			server.accountRegistrationVerificationCode(&messageContainer, t.AccountRegistrationCode)

		case *pb.ClientMessage_RequestUserList_:
			var users []*pb.ServerMessage_SendUserList_User

			// This query is a bit weird - it does work but it's convoluted. Maybe rethink (?)
			rows, err := server.db.Query(
				`SELECT id, username FROM users WHERE id != ? AND id NOT IN 
					(SELECT user_id FROM participants WHERE chat_id IN 
						(SELECT chat_id FROM participants WHERE user_id = ?)
					AND user_id != ?)`,
				user.id, user.id, user.id)
			if err != nil {
				log.Println(err.Error())
				return
			}
			var count = 10
			for rows.Next() && count > 0 {
				var id uint32
				var username string
				err := rows.Scan(&id, &username)
				if err != nil {
					log.Println(err.Error())
					return
				}
				users = append(users, &pb.ServerMessage_SendUserList_User{Id: id, Username: username})
				count--
			}
			rows.Close()

			// Why use complicated algorithm when simple algorithm does the job
			rand.Shuffle(len(users), func(i, j int) {
				users[i], users[j] = users[j], users[i]
			})

			newMessage, err := processServerMessage(&pb.ServerMessage{Variant: &pb.ServerMessage_SendUserList_{
				SendUserList: &pb.ServerMessage_SendUserList{Users: users}}},
				user.publicKey, server.privateKey)
			if err != nil {
				log.Println(err.Error())
				return
			}
			connection.Write(newMessage)

		case *pb.ClientMessage_RequestPublicKey_:
			rows, err := server.db.Query("SELECT public_key FROM users WHERE id = ?", t.RequestPublicKey.Id)
			if err != nil {
				log.Println(err.Error())
				continue
			}
			for rows.Next() {
				var publicKey = ""
				err := rows.Scan(&publicKey)
				if err != nil {
					log.Println(err.Error())
					return
				}
				newMessage, err := processServerMessage(&pb.ServerMessage{
					Variant: &pb.ServerMessage_SendPublicKey_{
						SendPublicKey: &pb.ServerMessage_SendPublicKey{PublicKey: publicKey}}},
					user.publicKey, server.privateKey)
				if err != nil {
					log.Println(err.Error())
					return
				}
				connection.Write(newMessage)
			}
			rows.Close()

		case *pb.ClientMessage_CreateChat_:
			stmt, err := server.db.Prepare("INSERT INTO chats (name, creator_id) VALUES (?, ?);")
			if err != nil {
				log.Println(err.Error())
				return
			}
			res, err := stmt.Exec(t.CreateChat.Name, messageContainer.user.id)
			if err != nil {
				log.Println(err.Error())
				return
			}
			chatId, err := res.LastInsertId()
			if err != nil {
				log.Println(err.Error())
				return
			}

			stmt, err = server.db.Prepare("INSERT INTO participants (user_id, chat_id, shared_key) VALUES (?, ?, ?);")
			if err != nil {
				log.Println(err.Error())
				return
			}
			_, err = stmt.Exec(messageContainer.user.id, chatId, t.CreateChat.SelfKey)
			if err != nil {
				log.Println(err.Error())
				return
			}

			// HARDCODED
			_, err = stmt.Exec(t.CreateChat.OtherKeys[0].Id, chatId, t.CreateChat.OtherKeys[0].Key)
			if err != nil {
				log.Println(err.Error())
				return
			}

		case *pb.ClientMessage_RequestChatList_:
			rows, err := server.db.Query(
				`SELECT participants.chat_id, users.username, users.id
				FROM users
				JOIN participants ON users.id = participants.user_id
				WHERE participants.chat_id IN (
					SELECT chat_id
					FROM participants
					WHERE user_id = ?
				) AND users.id != ?;`,
				messageContainer.user.id, messageContainer.user.id)
			if err != nil {
				log.Println(err.Error())
				return
			}

			var chats []*pb.ServerMessage_SendChatList_Chat
			for rows.Next() {
				var chatId uint32
				var username string
				var userId uint32
				err := rows.Scan(&chatId, &username, &userId)
				if err != nil {
					log.Println(err.Error())
					return
				}
				chats = append(chats, &pb.ServerMessage_SendChatList_Chat{
					Id: chatId, RecipientUsername: username, RecipientId: userId})
			}
			rows.Close()

			newMessage, err := processServerMessage(&pb.ServerMessage{Variant: &pb.ServerMessage_SendChatList_{
				SendChatList: &pb.ServerMessage_SendChatList{Chats: chats}}},
				user.publicKey, server.privateKey)
			if err != nil {
				log.Println(err.Error())
				return
			}

			connection.Write(newMessage)
		}
	}
}
