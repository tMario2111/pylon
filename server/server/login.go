package server

import (
	"crypto/x509"
	"encoding/pem"
	"log"
	pb "pylon/proto"

	"golang.org/x/crypto/bcrypt"
)

func (server *Server) logInResponse(messageContainer *Message, message *pb.ClientMessage_LogIn) {

	user := messageContainer.user

	rows, err := server.db.Query("SELECT id, password, public_key FROM users WHERE email = ?", message.Email)
	if err != nil {
		log.Println(err.Error())
		return
	}
	defer rows.Close()

	publicKeyPem := ""
	successful := false
	var id int = 0
	for rows.Next() {
		hashedPassword := ""
		err := rows.Scan(&id, &hashedPassword, &publicKeyPem)
		if err != nil {
			log.Println(err.Error())
			return
		}

		if bcrypt.CompareHashAndPassword([]byte(hashedPassword), []byte(message.Password)) == nil {
			successful = true
		}
	}

	newMessage, err := processServerMessage(&pb.ServerMessage{
		Variant: &pb.ServerMessage_ConfirmLogIn_{
			ConfirmLogIn: &pb.ServerMessage_ConfirmLogIn{Successful: successful, Id: int32(id)}}},
		user.publicKey, server.privateKey)
	if err != nil {
		log.Println(err.Error())
		return
	}
	messageContainer.connection.Write(newMessage)

	// Change key
	if successful {
		user.id = id

		block, _ := pem.Decode([]byte(publicKeyPem))
		publicKey, err := x509.ParsePKCS1PublicKey(block.Bytes)

		// This is pretty fatal, maybe add better error handling (client-side)
		if err != nil {
			log.Println(err.Error())
			return
		}
		user.publicKey = publicKey
	}
}
