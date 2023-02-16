package server

import (
	"bytes"
	"encoding/json"
	"log"
	"net/http"
	pb "pylon/proto"
	"unicode"
)

func (server *Server) registerAccount(messageContainer *Message, message *pb.ClientMessage_AccountRegistration) {
	passwordValid, passwordErr := isPasswordValid(message.Password)
	if !passwordValid {
		newMessage, err := processServerMessage(&pb.ServerMessage{
			Variant: &pb.ServerMessage_AccountRegistrationResult_{
				AccountRegistrationResult: &pb.ServerMessage_AccountRegistrationResult{
					Successful: false, PasswordError: &passwordErr}}}, *messageContainer.publicKey, server.privateKey)
		if err != nil {
			log.Println(err.Error())
			return
		}
		messageContainer.connection.Write(newMessage)
		return
	}

	sendCodeVerificationEmail(message.Email)
}

func isUsernameValid(username string) bool {
	// TODO
	return true
}

func isPasswordValid(password string) (bool, string) {
	if len(password) < 12 {
		return false, "Password must be at least 12 characters"
	}

	hasUpper := false
	for _, r := range password {
		if unicode.IsUpper(r) {
			hasUpper = true
			break
		}
	}
	if !hasUpper {
		return false, "Password must contain upper case characters"
	}

	hasLower := false
	for _, r := range password {
		if unicode.IsLower(r) {
			hasLower = true
			break
		}
	}
	if !hasLower {
		return false, "Password must contain lower case characters"
	}

	hasDigit := false
	for _, r := range password {
		if unicode.IsDigit(r) {
			hasDigit = true
			break
		}
	}
	if !hasDigit {
		return false, "Password must contain digits"
	}

	return true, ""
}

func sendCodeVerificationEmail(email string) (string, error) {
	type emailRequestBody struct {
		ServiceId      string `json:"service_id"`
		TemplateId     string `json:"template_id"`
		UserId         string `json:"user_id"`
		TemplateParams struct {
			Subject string `json:"subject"`
			Message string `json:"message"`
			Email   string `json:"email"`
		} `json:"template_params"`
	}

	code := GenerateEmailCode()

	requestBody := emailRequestBody{}
	requestBody.ServiceId = EMAIL_SERVICE_ID
	requestBody.TemplateId = EMAIL_TEMPLATE_ID
	requestBody.UserId = EMAIL_USER_ID
	requestBody.TemplateParams.Subject = "Verification code"
	requestBody.TemplateParams.Message = "Your verification code is " + string(code)
	requestBody.TemplateParams.Email = email

	jsonData, err := json.Marshal(requestBody)
	if err != nil {
		log.Println(err.Error())
		return "", err
	}

	request, err :=
		http.NewRequest(http.MethodPost, "https://api.emailjs.com/api/v1.0/email/send", bytes.NewBuffer(jsonData))
	if err != nil {
		log.Println(err.Error())
		return "", err
	}
	request.Header.Set("origin", "http://localhost")
	request.Header.Set("Content-Type", "application/json")

	client := &http.Client{}
	_, err = client.Do(request)
	if err != nil {
		log.Println(err.Error())
		return "", err
	}

	return code, nil
}
