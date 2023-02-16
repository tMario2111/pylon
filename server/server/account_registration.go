package server

import (
	"bytes"
	"encoding/json"
	"log"
	"net/http"
	pb "pylon/proto"
)

func (*Server) registerAccount(messageContainer *Message, message *pb.ClientMessage_AccountRegistration) {
	sendCodeVerificationEmail(message.Email)
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
