package server

import (
	"bytes"
	"compress/zlib"
	"crypto"
	"crypto/aes"
	"crypto/cipher"
	"crypto/rand"
	"crypto/rsa"
	"crypto/sha256"
	"encoding/binary"
	"io"
	pb "pylon/proto"

	"github.com/zenazn/pkcs7pad"
	"google.golang.org/protobuf/proto"
)

func unprocessClientMessage(key []byte, iv []byte, signature []byte, content []byte,
	serverPrivateKey *rsa.PrivateKey, clientPublicKey *rsa.PublicKey) ([]byte, error) {

	decryptedKey, err := rsa.DecryptOAEP(sha256.New(), rand.Reader, serverPrivateKey, key, []byte(""))
	if err != nil {
		return nil, err
	}
	defer clearBytes(&decryptedKey)

	decryptedIv, err := rsa.DecryptOAEP(sha256.New(), rand.Reader, serverPrivateKey, iv, []byte(""))
	if err != nil {
		return nil, err
	}
	defer clearBytes(&decryptedIv)

	block, err := aes.NewCipher(decryptedKey)
	if err != nil {
		return nil, err
	}

	plaintext := make([]byte, len(content))
	decrypter := cipher.NewCBCDecrypter(block, decryptedIv)
	decrypter.CryptBlocks(plaintext, content)

	plaintext, err = pkcs7pad.Unpad(plaintext)
	if err != nil {
		return nil, err
	}

	// Decompression
	{
		buf := bytes.NewBuffer(plaintext)
		r, err := zlib.NewReader(buf)
		if err != nil {
			return nil, err
		}
		io.Copy(buf, r)
		plaintext = buf.Bytes()
	}

	if clientPublicKey != nil {
		hash := sha256.New()
		_, err := hash.Write(plaintext)
		if err != nil {
			return nil, err
		}
		sum := hash.Sum(nil)
		err = rsa.VerifyPKCS1v15(clientPublicKey, crypto.SHA256, sum, signature)
		if err != nil {
			return nil, err
		}
	}

	return plaintext, nil
}

func processServerMessage(message *pb.ServerMessage, clientPublicKey *rsa.PublicKey,
	serverPrivateKey *rsa.PrivateKey) ([]byte, error) {

	serialized, err := proto.Marshal(message)
	if err != nil {
		return make([]byte, 0), err
	}

	hash := sha256.New()
	_, err = hash.Write(serialized)
	if err != nil {
		println(err.Error())
	}
	sum := hash.Sum(nil)

	signature, err := rsa.SignPKCS1v15(rand.Reader, serverPrivateKey, crypto.SHA256, sum)
	if err != nil {
		println(err.Error())
	}

	// Compression
	{
		var buf bytes.Buffer
		writer := zlib.NewWriter(&buf)
		writer.Write(serialized)
		writer.Close()
		serialized = buf.Bytes()
	}

	serialized = pkcs7pad.Pad(serialized, aes.BlockSize)

	key := make([]byte, AES_KEY_LEN)
	if _, err := rand.Read(key); err != nil {
		println(err.Error())
		return make([]byte, 0), err
	}
	defer clearBytes(&key)

	iv := make([]byte, aes.BlockSize)
	if _, err := rand.Read(iv); err != nil {
		println(err.Error())
		return make([]byte, 0), err
	}
	defer clearBytes(&iv)

	block, err := aes.NewCipher(key)
	if err != nil {
		println(err.Error())
		return make([]byte, 0), err
	}

	ciphertext := make([]byte, len(serialized))

	encrypter := cipher.NewCBCEncrypter(block, iv)
	encrypter.CryptBlocks(ciphertext, serialized)

	key, err = rsa.EncryptOAEP(sha256.New(), rand.Reader, clientPublicKey, key, []byte(""))
	if err != nil {
		println(err.Error())
		return make([]byte, 0), err
	}

	iv, err = rsa.EncryptOAEP(sha256.New(), rand.Reader, clientPublicKey, iv, []byte(""))
	if err != nil {
		println(err.Error())
		return make([]byte, 0), err
	}

	var cipherLen [4]byte
	binary.LittleEndian.PutUint32(cipherLen[0:4], uint32(len(ciphertext)))

	var result []byte
	result = append(result, key...)
	result = append(result, iv...)
	result = append(result, signature...)
	result = append(result, cipherLen[0:4]...)
	result = append(result, ciphertext...)

	return result, nil
}
