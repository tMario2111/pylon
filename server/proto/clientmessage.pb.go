// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.29.0
// 	protoc        v4.22.1
// source: proto/clientmessage.proto

package proto

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type ClientMessage struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Types that are assignable to Variant:
	//
	//	*ClientMessage_SendPublicKey_
	//	*ClientMessage_LogIn_
	//	*ClientMessage_AccountRegistration_
	//	*ClientMessage_AccountRegistrationCode_
	//	*ClientMessage_RequestUserList_
	//	*ClientMessage_CreateChat_
	//	*ClientMessage_RequestPublicKey_
	//	*ClientMessage_RequestChatList_
	//	*ClientMessage_RequestChatSharedKey_
	Variant isClientMessage_Variant `protobuf_oneof:"variant"`
}

func (x *ClientMessage) Reset() {
	*x = ClientMessage{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_clientmessage_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ClientMessage) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ClientMessage) ProtoMessage() {}

func (x *ClientMessage) ProtoReflect() protoreflect.Message {
	mi := &file_proto_clientmessage_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ClientMessage.ProtoReflect.Descriptor instead.
func (*ClientMessage) Descriptor() ([]byte, []int) {
	return file_proto_clientmessage_proto_rawDescGZIP(), []int{0}
}

func (m *ClientMessage) GetVariant() isClientMessage_Variant {
	if m != nil {
		return m.Variant
	}
	return nil
}

func (x *ClientMessage) GetSendPublicKey() *ClientMessage_SendPublicKey {
	if x, ok := x.GetVariant().(*ClientMessage_SendPublicKey_); ok {
		return x.SendPublicKey
	}
	return nil
}

func (x *ClientMessage) GetLogIn() *ClientMessage_LogIn {
	if x, ok := x.GetVariant().(*ClientMessage_LogIn_); ok {
		return x.LogIn
	}
	return nil
}

func (x *ClientMessage) GetAccountRegistration() *ClientMessage_AccountRegistration {
	if x, ok := x.GetVariant().(*ClientMessage_AccountRegistration_); ok {
		return x.AccountRegistration
	}
	return nil
}

func (x *ClientMessage) GetAccountRegistrationCode() *ClientMessage_AccountRegistrationCode {
	if x, ok := x.GetVariant().(*ClientMessage_AccountRegistrationCode_); ok {
		return x.AccountRegistrationCode
	}
	return nil
}

func (x *ClientMessage) GetRequestUserList() *ClientMessage_RequestUserList {
	if x, ok := x.GetVariant().(*ClientMessage_RequestUserList_); ok {
		return x.RequestUserList
	}
	return nil
}

func (x *ClientMessage) GetCreateChat() *ClientMessage_CreateChat {
	if x, ok := x.GetVariant().(*ClientMessage_CreateChat_); ok {
		return x.CreateChat
	}
	return nil
}

func (x *ClientMessage) GetRequestPublicKey() *ClientMessage_RequestPublicKey {
	if x, ok := x.GetVariant().(*ClientMessage_RequestPublicKey_); ok {
		return x.RequestPublicKey
	}
	return nil
}

func (x *ClientMessage) GetRequestChatList() *ClientMessage_RequestChatList {
	if x, ok := x.GetVariant().(*ClientMessage_RequestChatList_); ok {
		return x.RequestChatList
	}
	return nil
}

func (x *ClientMessage) GetRequestChatSharedKey() *ClientMessage_RequestChatSharedKey {
	if x, ok := x.GetVariant().(*ClientMessage_RequestChatSharedKey_); ok {
		return x.RequestChatSharedKey
	}
	return nil
}

type isClientMessage_Variant interface {
	isClientMessage_Variant()
}

type ClientMessage_SendPublicKey_ struct {
	SendPublicKey *ClientMessage_SendPublicKey `protobuf:"bytes,1,opt,name=send_public_key,json=sendPublicKey,proto3,oneof"`
}

type ClientMessage_LogIn_ struct {
	LogIn *ClientMessage_LogIn `protobuf:"bytes,2,opt,name=log_in,json=logIn,proto3,oneof"`
}

type ClientMessage_AccountRegistration_ struct {
	AccountRegistration *ClientMessage_AccountRegistration `protobuf:"bytes,3,opt,name=account_registration,json=accountRegistration,proto3,oneof"`
}

type ClientMessage_AccountRegistrationCode_ struct {
	AccountRegistrationCode *ClientMessage_AccountRegistrationCode `protobuf:"bytes,4,opt,name=account_registration_code,json=accountRegistrationCode,proto3,oneof"`
}

type ClientMessage_RequestUserList_ struct {
	RequestUserList *ClientMessage_RequestUserList `protobuf:"bytes,5,opt,name=request_user_list,json=requestUserList,proto3,oneof"`
}

type ClientMessage_CreateChat_ struct {
	CreateChat *ClientMessage_CreateChat `protobuf:"bytes,6,opt,name=create_chat,json=createChat,proto3,oneof"`
}

type ClientMessage_RequestPublicKey_ struct {
	RequestPublicKey *ClientMessage_RequestPublicKey `protobuf:"bytes,7,opt,name=request_public_key,json=requestPublicKey,proto3,oneof"`
}

type ClientMessage_RequestChatList_ struct {
	RequestChatList *ClientMessage_RequestChatList `protobuf:"bytes,8,opt,name=request_chat_list,json=requestChatList,proto3,oneof"`
}

type ClientMessage_RequestChatSharedKey_ struct {
	RequestChatSharedKey *ClientMessage_RequestChatSharedKey `protobuf:"bytes,9,opt,name=request_chat_shared_key,json=requestChatSharedKey,proto3,oneof"`
}

func (*ClientMessage_SendPublicKey_) isClientMessage_Variant() {}

func (*ClientMessage_LogIn_) isClientMessage_Variant() {}

func (*ClientMessage_AccountRegistration_) isClientMessage_Variant() {}

func (*ClientMessage_AccountRegistrationCode_) isClientMessage_Variant() {}

func (*ClientMessage_RequestUserList_) isClientMessage_Variant() {}

func (*ClientMessage_CreateChat_) isClientMessage_Variant() {}

func (*ClientMessage_RequestPublicKey_) isClientMessage_Variant() {}

func (*ClientMessage_RequestChatList_) isClientMessage_Variant() {}

func (*ClientMessage_RequestChatSharedKey_) isClientMessage_Variant() {}

type ClientMessage_SendPublicKey struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	KeyPem string `protobuf:"bytes,1,opt,name=key_pem,json=keyPem,proto3" json:"key_pem,omitempty"`
}

func (x *ClientMessage_SendPublicKey) Reset() {
	*x = ClientMessage_SendPublicKey{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_clientmessage_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ClientMessage_SendPublicKey) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ClientMessage_SendPublicKey) ProtoMessage() {}

func (x *ClientMessage_SendPublicKey) ProtoReflect() protoreflect.Message {
	mi := &file_proto_clientmessage_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ClientMessage_SendPublicKey.ProtoReflect.Descriptor instead.
func (*ClientMessage_SendPublicKey) Descriptor() ([]byte, []int) {
	return file_proto_clientmessage_proto_rawDescGZIP(), []int{0, 0}
}

func (x *ClientMessage_SendPublicKey) GetKeyPem() string {
	if x != nil {
		return x.KeyPem
	}
	return ""
}

type ClientMessage_LogIn struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Email    string `protobuf:"bytes,1,opt,name=email,proto3" json:"email,omitempty"`
	Password string `protobuf:"bytes,2,opt,name=password,proto3" json:"password,omitempty"`
}

func (x *ClientMessage_LogIn) Reset() {
	*x = ClientMessage_LogIn{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_clientmessage_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ClientMessage_LogIn) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ClientMessage_LogIn) ProtoMessage() {}

func (x *ClientMessage_LogIn) ProtoReflect() protoreflect.Message {
	mi := &file_proto_clientmessage_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ClientMessage_LogIn.ProtoReflect.Descriptor instead.
func (*ClientMessage_LogIn) Descriptor() ([]byte, []int) {
	return file_proto_clientmessage_proto_rawDescGZIP(), []int{0, 1}
}

func (x *ClientMessage_LogIn) GetEmail() string {
	if x != nil {
		return x.Email
	}
	return ""
}

func (x *ClientMessage_LogIn) GetPassword() string {
	if x != nil {
		return x.Password
	}
	return ""
}

type ClientMessage_AccountRegistration struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Email     string `protobuf:"bytes,1,opt,name=email,proto3" json:"email,omitempty"`
	Username  string `protobuf:"bytes,2,opt,name=username,proto3" json:"username,omitempty"`
	Password  string `protobuf:"bytes,3,opt,name=password,proto3" json:"password,omitempty"`
	PublicKey string `protobuf:"bytes,4,opt,name=public_key,json=publicKey,proto3" json:"public_key,omitempty"`
}

func (x *ClientMessage_AccountRegistration) Reset() {
	*x = ClientMessage_AccountRegistration{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_clientmessage_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ClientMessage_AccountRegistration) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ClientMessage_AccountRegistration) ProtoMessage() {}

func (x *ClientMessage_AccountRegistration) ProtoReflect() protoreflect.Message {
	mi := &file_proto_clientmessage_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ClientMessage_AccountRegistration.ProtoReflect.Descriptor instead.
func (*ClientMessage_AccountRegistration) Descriptor() ([]byte, []int) {
	return file_proto_clientmessage_proto_rawDescGZIP(), []int{0, 2}
}

func (x *ClientMessage_AccountRegistration) GetEmail() string {
	if x != nil {
		return x.Email
	}
	return ""
}

func (x *ClientMessage_AccountRegistration) GetUsername() string {
	if x != nil {
		return x.Username
	}
	return ""
}

func (x *ClientMessage_AccountRegistration) GetPassword() string {
	if x != nil {
		return x.Password
	}
	return ""
}

func (x *ClientMessage_AccountRegistration) GetPublicKey() string {
	if x != nil {
		return x.PublicKey
	}
	return ""
}

type ClientMessage_AccountRegistrationCode struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Code string `protobuf:"bytes,1,opt,name=code,proto3" json:"code,omitempty"`
}

func (x *ClientMessage_AccountRegistrationCode) Reset() {
	*x = ClientMessage_AccountRegistrationCode{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_clientmessage_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ClientMessage_AccountRegistrationCode) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ClientMessage_AccountRegistrationCode) ProtoMessage() {}

func (x *ClientMessage_AccountRegistrationCode) ProtoReflect() protoreflect.Message {
	mi := &file_proto_clientmessage_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ClientMessage_AccountRegistrationCode.ProtoReflect.Descriptor instead.
func (*ClientMessage_AccountRegistrationCode) Descriptor() ([]byte, []int) {
	return file_proto_clientmessage_proto_rawDescGZIP(), []int{0, 3}
}

func (x *ClientMessage_AccountRegistrationCode) GetCode() string {
	if x != nil {
		return x.Code
	}
	return ""
}

// name = chat name
// self_key = AES key encrypted with personal key
// other_keys = Other participants' AES keys encrypted with their own keys
type ClientMessage_CreateChat struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Name      string                                `protobuf:"bytes,1,opt,name=name,proto3" json:"name,omitempty"`
	SelfKey   string                                `protobuf:"bytes,2,opt,name=self_key,json=selfKey,proto3" json:"self_key,omitempty"`
	OtherKeys []*ClientMessage_CreateChat_IdKeyPair `protobuf:"bytes,3,rep,name=other_keys,json=otherKeys,proto3" json:"other_keys,omitempty"`
}

func (x *ClientMessage_CreateChat) Reset() {
	*x = ClientMessage_CreateChat{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_clientmessage_proto_msgTypes[5]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ClientMessage_CreateChat) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ClientMessage_CreateChat) ProtoMessage() {}

func (x *ClientMessage_CreateChat) ProtoReflect() protoreflect.Message {
	mi := &file_proto_clientmessage_proto_msgTypes[5]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ClientMessage_CreateChat.ProtoReflect.Descriptor instead.
func (*ClientMessage_CreateChat) Descriptor() ([]byte, []int) {
	return file_proto_clientmessage_proto_rawDescGZIP(), []int{0, 4}
}

func (x *ClientMessage_CreateChat) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *ClientMessage_CreateChat) GetSelfKey() string {
	if x != nil {
		return x.SelfKey
	}
	return ""
}

func (x *ClientMessage_CreateChat) GetOtherKeys() []*ClientMessage_CreateChat_IdKeyPair {
	if x != nil {
		return x.OtherKeys
	}
	return nil
}

type ClientMessage_RequestPublicKey struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id uint32 `protobuf:"varint,1,opt,name=id,proto3" json:"id,omitempty"`
}

func (x *ClientMessage_RequestPublicKey) Reset() {
	*x = ClientMessage_RequestPublicKey{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_clientmessage_proto_msgTypes[6]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ClientMessage_RequestPublicKey) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ClientMessage_RequestPublicKey) ProtoMessage() {}

func (x *ClientMessage_RequestPublicKey) ProtoReflect() protoreflect.Message {
	mi := &file_proto_clientmessage_proto_msgTypes[6]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ClientMessage_RequestPublicKey.ProtoReflect.Descriptor instead.
func (*ClientMessage_RequestPublicKey) Descriptor() ([]byte, []int) {
	return file_proto_clientmessage_proto_rawDescGZIP(), []int{0, 5}
}

func (x *ClientMessage_RequestPublicKey) GetId() uint32 {
	if x != nil {
		return x.Id
	}
	return 0
}

type ClientMessage_RequestUserList struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *ClientMessage_RequestUserList) Reset() {
	*x = ClientMessage_RequestUserList{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_clientmessage_proto_msgTypes[7]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ClientMessage_RequestUserList) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ClientMessage_RequestUserList) ProtoMessage() {}

func (x *ClientMessage_RequestUserList) ProtoReflect() protoreflect.Message {
	mi := &file_proto_clientmessage_proto_msgTypes[7]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ClientMessage_RequestUserList.ProtoReflect.Descriptor instead.
func (*ClientMessage_RequestUserList) Descriptor() ([]byte, []int) {
	return file_proto_clientmessage_proto_rawDescGZIP(), []int{0, 6}
}

type ClientMessage_RequestChatList struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *ClientMessage_RequestChatList) Reset() {
	*x = ClientMessage_RequestChatList{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_clientmessage_proto_msgTypes[8]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ClientMessage_RequestChatList) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ClientMessage_RequestChatList) ProtoMessage() {}

func (x *ClientMessage_RequestChatList) ProtoReflect() protoreflect.Message {
	mi := &file_proto_clientmessage_proto_msgTypes[8]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ClientMessage_RequestChatList.ProtoReflect.Descriptor instead.
func (*ClientMessage_RequestChatList) Descriptor() ([]byte, []int) {
	return file_proto_clientmessage_proto_rawDescGZIP(), []int{0, 7}
}

type ClientMessage_RequestChatSharedKey struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	ChatId uint32 `protobuf:"varint,1,opt,name=chat_id,json=chatId,proto3" json:"chat_id,omitempty"`
}

func (x *ClientMessage_RequestChatSharedKey) Reset() {
	*x = ClientMessage_RequestChatSharedKey{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_clientmessage_proto_msgTypes[9]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ClientMessage_RequestChatSharedKey) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ClientMessage_RequestChatSharedKey) ProtoMessage() {}

func (x *ClientMessage_RequestChatSharedKey) ProtoReflect() protoreflect.Message {
	mi := &file_proto_clientmessage_proto_msgTypes[9]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ClientMessage_RequestChatSharedKey.ProtoReflect.Descriptor instead.
func (*ClientMessage_RequestChatSharedKey) Descriptor() ([]byte, []int) {
	return file_proto_clientmessage_proto_rawDescGZIP(), []int{0, 8}
}

func (x *ClientMessage_RequestChatSharedKey) GetChatId() uint32 {
	if x != nil {
		return x.ChatId
	}
	return 0
}

type ClientMessage_CreateChat_IdKeyPair struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id  uint32 `protobuf:"varint,1,opt,name=id,proto3" json:"id,omitempty"`
	Key string `protobuf:"bytes,2,opt,name=key,proto3" json:"key,omitempty"`
}

func (x *ClientMessage_CreateChat_IdKeyPair) Reset() {
	*x = ClientMessage_CreateChat_IdKeyPair{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_clientmessage_proto_msgTypes[10]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ClientMessage_CreateChat_IdKeyPair) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ClientMessage_CreateChat_IdKeyPair) ProtoMessage() {}

func (x *ClientMessage_CreateChat_IdKeyPair) ProtoReflect() protoreflect.Message {
	mi := &file_proto_clientmessage_proto_msgTypes[10]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ClientMessage_CreateChat_IdKeyPair.ProtoReflect.Descriptor instead.
func (*ClientMessage_CreateChat_IdKeyPair) Descriptor() ([]byte, []int) {
	return file_proto_clientmessage_proto_rawDescGZIP(), []int{0, 4, 0}
}

func (x *ClientMessage_CreateChat_IdKeyPair) GetId() uint32 {
	if x != nil {
		return x.Id
	}
	return 0
}

func (x *ClientMessage_CreateChat_IdKeyPair) GetKey() string {
	if x != nil {
		return x.Key
	}
	return ""
}

var File_proto_clientmessage_proto protoreflect.FileDescriptor

var file_proto_clientmessage_proto_rawDesc = []byte{
	0x0a, 0x19, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x63, 0x6c, 0x69, 0x65, 0x6e, 0x74, 0x6d, 0x65,
	0x73, 0x73, 0x61, 0x67, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x04, 0x6d, 0x61, 0x69,
	0x6e, 0x22, 0xd0, 0x0a, 0x0a, 0x0d, 0x43, 0x6c, 0x69, 0x65, 0x6e, 0x74, 0x4d, 0x65, 0x73, 0x73,
	0x61, 0x67, 0x65, 0x12, 0x4b, 0x0a, 0x0f, 0x73, 0x65, 0x6e, 0x64, 0x5f, 0x70, 0x75, 0x62, 0x6c,
	0x69, 0x63, 0x5f, 0x6b, 0x65, 0x79, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x21, 0x2e, 0x6d,
	0x61, 0x69, 0x6e, 0x2e, 0x43, 0x6c, 0x69, 0x65, 0x6e, 0x74, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67,
	0x65, 0x2e, 0x53, 0x65, 0x6e, 0x64, 0x50, 0x75, 0x62, 0x6c, 0x69, 0x63, 0x4b, 0x65, 0x79, 0x48,
	0x00, 0x52, 0x0d, 0x73, 0x65, 0x6e, 0x64, 0x50, 0x75, 0x62, 0x6c, 0x69, 0x63, 0x4b, 0x65, 0x79,
	0x12, 0x32, 0x0a, 0x06, 0x6c, 0x6f, 0x67, 0x5f, 0x69, 0x6e, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0b,
	0x32, 0x19, 0x2e, 0x6d, 0x61, 0x69, 0x6e, 0x2e, 0x43, 0x6c, 0x69, 0x65, 0x6e, 0x74, 0x4d, 0x65,
	0x73, 0x73, 0x61, 0x67, 0x65, 0x2e, 0x4c, 0x6f, 0x67, 0x49, 0x6e, 0x48, 0x00, 0x52, 0x05, 0x6c,
	0x6f, 0x67, 0x49, 0x6e, 0x12, 0x5c, 0x0a, 0x14, 0x61, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x5f,
	0x72, 0x65, 0x67, 0x69, 0x73, 0x74, 0x72, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x18, 0x03, 0x20, 0x01,
	0x28, 0x0b, 0x32, 0x27, 0x2e, 0x6d, 0x61, 0x69, 0x6e, 0x2e, 0x43, 0x6c, 0x69, 0x65, 0x6e, 0x74,
	0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x2e, 0x41, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x52,
	0x65, 0x67, 0x69, 0x73, 0x74, 0x72, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x48, 0x00, 0x52, 0x13, 0x61,
	0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x52, 0x65, 0x67, 0x69, 0x73, 0x74, 0x72, 0x61, 0x74, 0x69,
	0x6f, 0x6e, 0x12, 0x69, 0x0a, 0x19, 0x61, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x5f, 0x72, 0x65,
	0x67, 0x69, 0x73, 0x74, 0x72, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x5f, 0x63, 0x6f, 0x64, 0x65, 0x18,
	0x04, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x2b, 0x2e, 0x6d, 0x61, 0x69, 0x6e, 0x2e, 0x43, 0x6c, 0x69,
	0x65, 0x6e, 0x74, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x2e, 0x41, 0x63, 0x63, 0x6f, 0x75,
	0x6e, 0x74, 0x52, 0x65, 0x67, 0x69, 0x73, 0x74, 0x72, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x43, 0x6f,
	0x64, 0x65, 0x48, 0x00, 0x52, 0x17, 0x61, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x52, 0x65, 0x67,
	0x69, 0x73, 0x74, 0x72, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x43, 0x6f, 0x64, 0x65, 0x12, 0x51, 0x0a,
	0x11, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x5f, 0x75, 0x73, 0x65, 0x72, 0x5f, 0x6c, 0x69,
	0x73, 0x74, 0x18, 0x05, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x23, 0x2e, 0x6d, 0x61, 0x69, 0x6e, 0x2e,
	0x43, 0x6c, 0x69, 0x65, 0x6e, 0x74, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x2e, 0x52, 0x65,
	0x71, 0x75, 0x65, 0x73, 0x74, 0x55, 0x73, 0x65, 0x72, 0x4c, 0x69, 0x73, 0x74, 0x48, 0x00, 0x52,
	0x0f, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x55, 0x73, 0x65, 0x72, 0x4c, 0x69, 0x73, 0x74,
	0x12, 0x41, 0x0a, 0x0b, 0x63, 0x72, 0x65, 0x61, 0x74, 0x65, 0x5f, 0x63, 0x68, 0x61, 0x74, 0x18,
	0x06, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1e, 0x2e, 0x6d, 0x61, 0x69, 0x6e, 0x2e, 0x43, 0x6c, 0x69,
	0x65, 0x6e, 0x74, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x2e, 0x43, 0x72, 0x65, 0x61, 0x74,
	0x65, 0x43, 0x68, 0x61, 0x74, 0x48, 0x00, 0x52, 0x0a, 0x63, 0x72, 0x65, 0x61, 0x74, 0x65, 0x43,
	0x68, 0x61, 0x74, 0x12, 0x54, 0x0a, 0x12, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x5f, 0x70,
	0x75, 0x62, 0x6c, 0x69, 0x63, 0x5f, 0x6b, 0x65, 0x79, 0x18, 0x07, 0x20, 0x01, 0x28, 0x0b, 0x32,
	0x24, 0x2e, 0x6d, 0x61, 0x69, 0x6e, 0x2e, 0x43, 0x6c, 0x69, 0x65, 0x6e, 0x74, 0x4d, 0x65, 0x73,
	0x73, 0x61, 0x67, 0x65, 0x2e, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x50, 0x75, 0x62, 0x6c,
	0x69, 0x63, 0x4b, 0x65, 0x79, 0x48, 0x00, 0x52, 0x10, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74,
	0x50, 0x75, 0x62, 0x6c, 0x69, 0x63, 0x4b, 0x65, 0x79, 0x12, 0x51, 0x0a, 0x11, 0x72, 0x65, 0x71,
	0x75, 0x65, 0x73, 0x74, 0x5f, 0x63, 0x68, 0x61, 0x74, 0x5f, 0x6c, 0x69, 0x73, 0x74, 0x18, 0x08,
	0x20, 0x01, 0x28, 0x0b, 0x32, 0x23, 0x2e, 0x6d, 0x61, 0x69, 0x6e, 0x2e, 0x43, 0x6c, 0x69, 0x65,
	0x6e, 0x74, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x2e, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73,
	0x74, 0x43, 0x68, 0x61, 0x74, 0x4c, 0x69, 0x73, 0x74, 0x48, 0x00, 0x52, 0x0f, 0x72, 0x65, 0x71,
	0x75, 0x65, 0x73, 0x74, 0x43, 0x68, 0x61, 0x74, 0x4c, 0x69, 0x73, 0x74, 0x12, 0x61, 0x0a, 0x17,
	0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x5f, 0x63, 0x68, 0x61, 0x74, 0x5f, 0x73, 0x68, 0x61,
	0x72, 0x65, 0x64, 0x5f, 0x6b, 0x65, 0x79, 0x18, 0x09, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x28, 0x2e,
	0x6d, 0x61, 0x69, 0x6e, 0x2e, 0x43, 0x6c, 0x69, 0x65, 0x6e, 0x74, 0x4d, 0x65, 0x73, 0x73, 0x61,
	0x67, 0x65, 0x2e, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x43, 0x68, 0x61, 0x74, 0x53, 0x68,
	0x61, 0x72, 0x65, 0x64, 0x4b, 0x65, 0x79, 0x48, 0x00, 0x52, 0x14, 0x72, 0x65, 0x71, 0x75, 0x65,
	0x73, 0x74, 0x43, 0x68, 0x61, 0x74, 0x53, 0x68, 0x61, 0x72, 0x65, 0x64, 0x4b, 0x65, 0x79, 0x1a,
	0x28, 0x0a, 0x0d, 0x53, 0x65, 0x6e, 0x64, 0x50, 0x75, 0x62, 0x6c, 0x69, 0x63, 0x4b, 0x65, 0x79,
	0x12, 0x17, 0x0a, 0x07, 0x6b, 0x65, 0x79, 0x5f, 0x70, 0x65, 0x6d, 0x18, 0x01, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x06, 0x6b, 0x65, 0x79, 0x50, 0x65, 0x6d, 0x1a, 0x39, 0x0a, 0x05, 0x4c, 0x6f, 0x67,
	0x49, 0x6e, 0x12, 0x14, 0x0a, 0x05, 0x65, 0x6d, 0x61, 0x69, 0x6c, 0x18, 0x01, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x05, 0x65, 0x6d, 0x61, 0x69, 0x6c, 0x12, 0x1a, 0x0a, 0x08, 0x70, 0x61, 0x73, 0x73,
	0x77, 0x6f, 0x72, 0x64, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x08, 0x70, 0x61, 0x73, 0x73,
	0x77, 0x6f, 0x72, 0x64, 0x1a, 0x82, 0x01, 0x0a, 0x13, 0x41, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74,
	0x52, 0x65, 0x67, 0x69, 0x73, 0x74, 0x72, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x12, 0x14, 0x0a, 0x05,
	0x65, 0x6d, 0x61, 0x69, 0x6c, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x05, 0x65, 0x6d, 0x61,
	0x69, 0x6c, 0x12, 0x1a, 0x0a, 0x08, 0x75, 0x73, 0x65, 0x72, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x02,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x08, 0x75, 0x73, 0x65, 0x72, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x1a,
	0x0a, 0x08, 0x70, 0x61, 0x73, 0x73, 0x77, 0x6f, 0x72, 0x64, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09,
	0x52, 0x08, 0x70, 0x61, 0x73, 0x73, 0x77, 0x6f, 0x72, 0x64, 0x12, 0x1d, 0x0a, 0x0a, 0x70, 0x75,
	0x62, 0x6c, 0x69, 0x63, 0x5f, 0x6b, 0x65, 0x79, 0x18, 0x04, 0x20, 0x01, 0x28, 0x09, 0x52, 0x09,
	0x70, 0x75, 0x62, 0x6c, 0x69, 0x63, 0x4b, 0x65, 0x79, 0x1a, 0x2d, 0x0a, 0x17, 0x41, 0x63, 0x63,
	0x6f, 0x75, 0x6e, 0x74, 0x52, 0x65, 0x67, 0x69, 0x73, 0x74, 0x72, 0x61, 0x74, 0x69, 0x6f, 0x6e,
	0x43, 0x6f, 0x64, 0x65, 0x12, 0x12, 0x0a, 0x04, 0x63, 0x6f, 0x64, 0x65, 0x18, 0x01, 0x20, 0x01,
	0x28, 0x09, 0x52, 0x04, 0x63, 0x6f, 0x64, 0x65, 0x1a, 0xb3, 0x01, 0x0a, 0x0a, 0x43, 0x72, 0x65,
	0x61, 0x74, 0x65, 0x43, 0x68, 0x61, 0x74, 0x12, 0x12, 0x0a, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18,
	0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x19, 0x0a, 0x08, 0x73,
	0x65, 0x6c, 0x66, 0x5f, 0x6b, 0x65, 0x79, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x07, 0x73,
	0x65, 0x6c, 0x66, 0x4b, 0x65, 0x79, 0x12, 0x47, 0x0a, 0x0a, 0x6f, 0x74, 0x68, 0x65, 0x72, 0x5f,
	0x6b, 0x65, 0x79, 0x73, 0x18, 0x03, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x28, 0x2e, 0x6d, 0x61, 0x69,
	0x6e, 0x2e, 0x43, 0x6c, 0x69, 0x65, 0x6e, 0x74, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x2e,
	0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x43, 0x68, 0x61, 0x74, 0x2e, 0x49, 0x64, 0x4b, 0x65, 0x79,
	0x50, 0x61, 0x69, 0x72, 0x52, 0x09, 0x6f, 0x74, 0x68, 0x65, 0x72, 0x4b, 0x65, 0x79, 0x73, 0x1a,
	0x2d, 0x0a, 0x09, 0x49, 0x64, 0x4b, 0x65, 0x79, 0x50, 0x61, 0x69, 0x72, 0x12, 0x0e, 0x0a, 0x02,
	0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0d, 0x52, 0x02, 0x69, 0x64, 0x12, 0x10, 0x0a, 0x03,
	0x6b, 0x65, 0x79, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03, 0x6b, 0x65, 0x79, 0x1a, 0x22,
	0x0a, 0x10, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x50, 0x75, 0x62, 0x6c, 0x69, 0x63, 0x4b,
	0x65, 0x79, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0d, 0x52, 0x02,
	0x69, 0x64, 0x1a, 0x11, 0x0a, 0x0f, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x55, 0x73, 0x65,
	0x72, 0x4c, 0x69, 0x73, 0x74, 0x1a, 0x11, 0x0a, 0x0f, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74,
	0x43, 0x68, 0x61, 0x74, 0x4c, 0x69, 0x73, 0x74, 0x1a, 0x2f, 0x0a, 0x14, 0x52, 0x65, 0x71, 0x75,
	0x65, 0x73, 0x74, 0x43, 0x68, 0x61, 0x74, 0x53, 0x68, 0x61, 0x72, 0x65, 0x64, 0x4b, 0x65, 0x79,
	0x12, 0x17, 0x0a, 0x07, 0x63, 0x68, 0x61, 0x74, 0x5f, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28,
	0x0d, 0x52, 0x06, 0x63, 0x68, 0x61, 0x74, 0x49, 0x64, 0x42, 0x09, 0x0a, 0x07, 0x76, 0x61, 0x72,
	0x69, 0x61, 0x6e, 0x74, 0x42, 0x08, 0x5a, 0x06, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x06,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_proto_clientmessage_proto_rawDescOnce sync.Once
	file_proto_clientmessage_proto_rawDescData = file_proto_clientmessage_proto_rawDesc
)

func file_proto_clientmessage_proto_rawDescGZIP() []byte {
	file_proto_clientmessage_proto_rawDescOnce.Do(func() {
		file_proto_clientmessage_proto_rawDescData = protoimpl.X.CompressGZIP(file_proto_clientmessage_proto_rawDescData)
	})
	return file_proto_clientmessage_proto_rawDescData
}

var file_proto_clientmessage_proto_msgTypes = make([]protoimpl.MessageInfo, 11)
var file_proto_clientmessage_proto_goTypes = []interface{}{
	(*ClientMessage)(nil),                         // 0: main.ClientMessage
	(*ClientMessage_SendPublicKey)(nil),           // 1: main.ClientMessage.SendPublicKey
	(*ClientMessage_LogIn)(nil),                   // 2: main.ClientMessage.LogIn
	(*ClientMessage_AccountRegistration)(nil),     // 3: main.ClientMessage.AccountRegistration
	(*ClientMessage_AccountRegistrationCode)(nil), // 4: main.ClientMessage.AccountRegistrationCode
	(*ClientMessage_CreateChat)(nil),              // 5: main.ClientMessage.CreateChat
	(*ClientMessage_RequestPublicKey)(nil),        // 6: main.ClientMessage.RequestPublicKey
	(*ClientMessage_RequestUserList)(nil),         // 7: main.ClientMessage.RequestUserList
	(*ClientMessage_RequestChatList)(nil),         // 8: main.ClientMessage.RequestChatList
	(*ClientMessage_RequestChatSharedKey)(nil),    // 9: main.ClientMessage.RequestChatSharedKey
	(*ClientMessage_CreateChat_IdKeyPair)(nil),    // 10: main.ClientMessage.CreateChat.IdKeyPair
}
var file_proto_clientmessage_proto_depIdxs = []int32{
	1,  // 0: main.ClientMessage.send_public_key:type_name -> main.ClientMessage.SendPublicKey
	2,  // 1: main.ClientMessage.log_in:type_name -> main.ClientMessage.LogIn
	3,  // 2: main.ClientMessage.account_registration:type_name -> main.ClientMessage.AccountRegistration
	4,  // 3: main.ClientMessage.account_registration_code:type_name -> main.ClientMessage.AccountRegistrationCode
	7,  // 4: main.ClientMessage.request_user_list:type_name -> main.ClientMessage.RequestUserList
	5,  // 5: main.ClientMessage.create_chat:type_name -> main.ClientMessage.CreateChat
	6,  // 6: main.ClientMessage.request_public_key:type_name -> main.ClientMessage.RequestPublicKey
	8,  // 7: main.ClientMessage.request_chat_list:type_name -> main.ClientMessage.RequestChatList
	9,  // 8: main.ClientMessage.request_chat_shared_key:type_name -> main.ClientMessage.RequestChatSharedKey
	10, // 9: main.ClientMessage.CreateChat.other_keys:type_name -> main.ClientMessage.CreateChat.IdKeyPair
	10, // [10:10] is the sub-list for method output_type
	10, // [10:10] is the sub-list for method input_type
	10, // [10:10] is the sub-list for extension type_name
	10, // [10:10] is the sub-list for extension extendee
	0,  // [0:10] is the sub-list for field type_name
}

func init() { file_proto_clientmessage_proto_init() }
func file_proto_clientmessage_proto_init() {
	if File_proto_clientmessage_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_proto_clientmessage_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ClientMessage); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_clientmessage_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ClientMessage_SendPublicKey); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_clientmessage_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ClientMessage_LogIn); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_clientmessage_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ClientMessage_AccountRegistration); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_clientmessage_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ClientMessage_AccountRegistrationCode); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_clientmessage_proto_msgTypes[5].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ClientMessage_CreateChat); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_clientmessage_proto_msgTypes[6].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ClientMessage_RequestPublicKey); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_clientmessage_proto_msgTypes[7].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ClientMessage_RequestUserList); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_clientmessage_proto_msgTypes[8].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ClientMessage_RequestChatList); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_clientmessage_proto_msgTypes[9].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ClientMessage_RequestChatSharedKey); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_clientmessage_proto_msgTypes[10].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ClientMessage_CreateChat_IdKeyPair); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	file_proto_clientmessage_proto_msgTypes[0].OneofWrappers = []interface{}{
		(*ClientMessage_SendPublicKey_)(nil),
		(*ClientMessage_LogIn_)(nil),
		(*ClientMessage_AccountRegistration_)(nil),
		(*ClientMessage_AccountRegistrationCode_)(nil),
		(*ClientMessage_RequestUserList_)(nil),
		(*ClientMessage_CreateChat_)(nil),
		(*ClientMessage_RequestPublicKey_)(nil),
		(*ClientMessage_RequestChatList_)(nil),
		(*ClientMessage_RequestChatSharedKey_)(nil),
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_proto_clientmessage_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   11,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_proto_clientmessage_proto_goTypes,
		DependencyIndexes: file_proto_clientmessage_proto_depIdxs,
		MessageInfos:      file_proto_clientmessage_proto_msgTypes,
	}.Build()
	File_proto_clientmessage_proto = out.File
	file_proto_clientmessage_proto_rawDesc = nil
	file_proto_clientmessage_proto_goTypes = nil
	file_proto_clientmessage_proto_depIdxs = nil
}
