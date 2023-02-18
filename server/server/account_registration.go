package server

import (
	"bytes"
	"database/sql"
	"encoding/json"
	"log"
	"net/http"
	pb "pylon/proto"
	"strconv"
	"time"
	"unicode"

	"golang.org/x/crypto/bcrypt"
)

const (
	EMAIL_VERIFICATION_CODE_EXPIRATION_TIME = 300 // in seconds
	VERIFICATION_CODE_TRIES                 = 5
)

func (server *Server) accountRegistrationResponse(
	messageContainer *Message, message *pb.ClientMessage_AccountRegistration) {

	emailValid, emailErr := isEmailValid(message.Email, server.db)
	usernameValid, usernameErr := isUsernameValid(message.Username, server.db)
	passwordValid, passwordErr := isPasswordValid(message.Password)

	if !emailValid || !usernameValid || !passwordValid {
		regResult := pb.ServerMessage_AccountRegistrationResult{}
		regResult.Successful = false
		if !emailValid {
			regResult.EmailError = &emailErr
		}
		if !usernameValid {
			regResult.UsernameError = &usernameErr
		}
		if !passwordValid {
			regResult.PasswordError = &passwordErr
		}
		newMessage, err := processServerMessage(&pb.ServerMessage{
			Variant: &pb.ServerMessage_AccountRegistrationResult_{
				AccountRegistrationResult: &regResult,
			}}, *messageContainer.publicKey, server.privateKey)
		if err != nil {
			log.Println(err.Error())
			return
		}
		messageContainer.connection.Write(newMessage)
		return
	}

	code, err := sendCodeVerificationEmail(message.Email)
	if err != nil {
		log.Println(err.Error())
		return
	}

	hashedPassword, err := bcrypt.GenerateFromPassword([]byte(message.Password), bcrypt.DefaultCost)
	if err != nil {
		log.Println(err.Error())
		return
	}

	storage := messageContainer.storage

	(*storage)["code"] = code
	(*storage)["password"] = string(hashedPassword)
	(*storage)["email"] = message.Email
	(*storage)["username"] = message.Username
	(*storage)["public_key"] = message.PublicKey

	log.Println(message.PublicKey)

	(*storage)["timestamp"] = strconv.FormatInt(time.Now().Unix(), 10)
	(*storage)["tries"] = strconv.FormatInt(VERIFICATION_CODE_TRIES, 10)

	newMessage, err := processServerMessage(&pb.ServerMessage{
		Variant: &pb.ServerMessage_AccountRegistrationResult_{
			AccountRegistrationResult: &pb.ServerMessage_AccountRegistrationResult{Successful: true}}},
		*messageContainer.publicKey, server.privateKey)
	if err != nil {
		log.Println(err.Error())
		return
	}
	messageContainer.connection.Write(newMessage)
}

func isEmailValid(email string, db *sql.DB) (bool, string) {
	rows, err := db.Query("SELECT COUNT(*) FROM users WHERE email = ?", email)
	if err != nil {
		log.Println(err.Error())
		return false, ""
	}
	defer rows.Close()

	count := 0
	for rows.Next() {
		err := rows.Scan(&count)
		if err != nil {
			log.Println(err.Error())
			return false, ""
		}
	}
	if count != 0 {
		return false, "Email is already in use"
	}
	return true, ""
}

func isUsernameValid(username string, db *sql.DB) (bool, string) {
	if len(username) < 3 || len(username) > 30 {
		return false, "Username must be between 3 and 30 characters"
	}

	rows, err := db.Query("SELECT COUNT(*) FROM users WHERE username = ?", username)
	if err != nil {
		log.Println(err.Error())
		return false, ""
	}
	defer rows.Close()

	count := 0
	for rows.Next() {
		err := rows.Scan(&count)
		if err != nil {
			log.Println(err.Error())
			return false, ""
		}
	}
	if count != 0 {
		return false, "Username is already in use"
	}
	return true, ""
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

func (server *Server) accountRegistrationVerificationCode(messageContainer *Message,
	message *pb.ClientMessage_AccountRegistrationCode) {

	successful, critical, errMessage := isVerificationCodeValid(message.Code, messageContainer.storage)

	if successful {

	}

	newMessage, err := processServerMessage(&pb.ServerMessage{
		Variant: &pb.ServerMessage_AccountRegistrationCodeResult_{
			AccountRegistrationCodeResult: &pb.ServerMessage_AccountRegistrationCodeResult{
				Successful: successful, CriticalError: critical, Error: &errMessage}}},
		*messageContainer.publicKey, server.privateKey)
	if err != nil {
		log.Println(err.Error())
		return
	}
	messageContainer.connection.Write(newMessage)
}

func isVerificationCodeValid(code string, storage *map[string]string) (
	successful bool, critical bool, errMessage string) {

	const defaultErrorMessage = "An error has occurred, please try again"

	timestampStr, ok := (*storage)["timestamp"]
	if !ok {
		successful, critical, errMessage = false, true, defaultErrorMessage
		return
	}
	timestamp, err := strconv.ParseInt(timestampStr, 10, 64)
	if err != nil {
		log.Println(err.Error())
		successful, critical, errMessage = false, true, defaultErrorMessage
		return
	}
	if time.Now().Unix()-timestamp > EMAIL_VERIFICATION_CODE_EXPIRATION_TIME {
		successful, critical, errMessage = false, true, "The code has expired, please try again"
		return
	}

	storedCode, ok := (*storage)["code"]
	if !ok {
		successful, critical, errMessage = false, true, defaultErrorMessage
		return
	}
	if code != storedCode {
		triesStr := (*storage)["tries"]
		tries, err := strconv.ParseInt(triesStr, 10, 32)
		if err != nil {
			successful, critical, errMessage = false, true, defaultErrorMessage
			return
		}
		if tries == 0 {
			successful, critical, errMessage = false, true, "Number of tries exceeded, please try again"
			return
		}
		tries--
		(*storage)["tries"] = strconv.FormatInt(tries, 10)
		successful, critical, errMessage = false, false, "Incorrect code, "+(*storage)["tries"]+" remaining tries"
		return
	}

	successful, critical, errMessage = true, false, ""
	return
}
