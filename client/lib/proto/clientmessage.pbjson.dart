///
//  Generated code. Do not modify.
//  source: proto/clientmessage.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage$json = const {
  '1': 'ClientMessage',
  '2': const [
    const {'1': 'send_public_key', '3': 1, '4': 1, '5': 11, '6': '.main.ClientMessage.SendPublicKey', '9': 0, '10': 'sendPublicKey'},
    const {'1': 'log_in', '3': 2, '4': 1, '5': 11, '6': '.main.ClientMessage.LogIn', '9': 0, '10': 'logIn'},
    const {'1': 'account_registration', '3': 3, '4': 1, '5': 11, '6': '.main.ClientMessage.AccountRegistration', '9': 0, '10': 'accountRegistration'},
    const {'1': 'account_registration_code', '3': 4, '4': 1, '5': 11, '6': '.main.ClientMessage.AccountRegistrationCode', '9': 0, '10': 'accountRegistrationCode'},
    const {'1': 'request_user_list', '3': 5, '4': 1, '5': 11, '6': '.main.ClientMessage.RequestUserList', '9': 0, '10': 'requestUserList'},
    const {'1': 'create_chat', '3': 6, '4': 1, '5': 11, '6': '.main.ClientMessage.CreateChat', '9': 0, '10': 'createChat'},
    const {'1': 'request_public_key', '3': 7, '4': 1, '5': 11, '6': '.main.ClientMessage.RequestPublicKey', '9': 0, '10': 'requestPublicKey'},
    const {'1': 'request_chat_list', '3': 8, '4': 1, '5': 11, '6': '.main.ClientMessage.RequestChatList', '9': 0, '10': 'requestChatList'},
    const {'1': 'request_chat_shared_key', '3': 9, '4': 1, '5': 11, '6': '.main.ClientMessage.RequestChatSharedKey', '9': 0, '10': 'requestChatSharedKey'},
  ],
  '3': const [ClientMessage_SendPublicKey$json, ClientMessage_LogIn$json, ClientMessage_AccountRegistration$json, ClientMessage_AccountRegistrationCode$json, ClientMessage_CreateChat$json, ClientMessage_RequestPublicKey$json, ClientMessage_RequestUserList$json, ClientMessage_RequestChatList$json, ClientMessage_RequestChatSharedKey$json],
  '8': const [
    const {'1': 'variant'},
  ],
};

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage_SendPublicKey$json = const {
  '1': 'SendPublicKey',
  '2': const [
    const {'1': 'key_pem', '3': 1, '4': 1, '5': 9, '10': 'keyPem'},
  ],
};

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage_LogIn$json = const {
  '1': 'LogIn',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage_AccountRegistration$json = const {
  '1': 'AccountRegistration',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'public_key', '3': 4, '4': 1, '5': 9, '10': 'publicKey'},
  ],
};

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage_AccountRegistrationCode$json = const {
  '1': 'AccountRegistrationCode',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
  ],
};

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage_CreateChat$json = const {
  '1': 'CreateChat',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'self_key', '3': 2, '4': 1, '5': 9, '10': 'selfKey'},
    const {'1': 'other_keys', '3': 3, '4': 3, '5': 11, '6': '.main.ClientMessage.CreateChat.IdKeyPair', '10': 'otherKeys'},
  ],
  '3': const [ClientMessage_CreateChat_IdKeyPair$json],
};

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage_CreateChat_IdKeyPair$json = const {
  '1': 'IdKeyPair',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
  ],
};

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage_RequestPublicKey$json = const {
  '1': 'RequestPublicKey',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage_RequestUserList$json = const {
  '1': 'RequestUserList',
};

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage_RequestChatList$json = const {
  '1': 'RequestChatList',
};

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage_RequestChatSharedKey$json = const {
  '1': 'RequestChatSharedKey',
  '2': const [
    const {'1': 'chat_id', '3': 1, '4': 1, '5': 13, '10': 'chatId'},
  ],
};

/// Descriptor for `ClientMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientMessageDescriptor = $convert.base64Decode('Cg1DbGllbnRNZXNzYWdlEksKD3NlbmRfcHVibGljX2tleRgBIAEoCzIhLm1haW4uQ2xpZW50TWVzc2FnZS5TZW5kUHVibGljS2V5SABSDXNlbmRQdWJsaWNLZXkSMgoGbG9nX2luGAIgASgLMhkubWFpbi5DbGllbnRNZXNzYWdlLkxvZ0luSABSBWxvZ0luElwKFGFjY291bnRfcmVnaXN0cmF0aW9uGAMgASgLMicubWFpbi5DbGllbnRNZXNzYWdlLkFjY291bnRSZWdpc3RyYXRpb25IAFITYWNjb3VudFJlZ2lzdHJhdGlvbhJpChlhY2NvdW50X3JlZ2lzdHJhdGlvbl9jb2RlGAQgASgLMisubWFpbi5DbGllbnRNZXNzYWdlLkFjY291bnRSZWdpc3RyYXRpb25Db2RlSABSF2FjY291bnRSZWdpc3RyYXRpb25Db2RlElEKEXJlcXVlc3RfdXNlcl9saXN0GAUgASgLMiMubWFpbi5DbGllbnRNZXNzYWdlLlJlcXVlc3RVc2VyTGlzdEgAUg9yZXF1ZXN0VXNlckxpc3QSQQoLY3JlYXRlX2NoYXQYBiABKAsyHi5tYWluLkNsaWVudE1lc3NhZ2UuQ3JlYXRlQ2hhdEgAUgpjcmVhdGVDaGF0ElQKEnJlcXVlc3RfcHVibGljX2tleRgHIAEoCzIkLm1haW4uQ2xpZW50TWVzc2FnZS5SZXF1ZXN0UHVibGljS2V5SABSEHJlcXVlc3RQdWJsaWNLZXkSUQoRcmVxdWVzdF9jaGF0X2xpc3QYCCABKAsyIy5tYWluLkNsaWVudE1lc3NhZ2UuUmVxdWVzdENoYXRMaXN0SABSD3JlcXVlc3RDaGF0TGlzdBJhChdyZXF1ZXN0X2NoYXRfc2hhcmVkX2tleRgJIAEoCzIoLm1haW4uQ2xpZW50TWVzc2FnZS5SZXF1ZXN0Q2hhdFNoYXJlZEtleUgAUhRyZXF1ZXN0Q2hhdFNoYXJlZEtleRooCg1TZW5kUHVibGljS2V5EhcKB2tleV9wZW0YASABKAlSBmtleVBlbRo5CgVMb2dJbhIUCgVlbWFpbBgBIAEoCVIFZW1haWwSGgoIcGFzc3dvcmQYAiABKAlSCHBhc3N3b3JkGoIBChNBY2NvdW50UmVnaXN0cmF0aW9uEhQKBWVtYWlsGAEgASgJUgVlbWFpbBIaCgh1c2VybmFtZRgCIAEoCVIIdXNlcm5hbWUSGgoIcGFzc3dvcmQYAyABKAlSCHBhc3N3b3JkEh0KCnB1YmxpY19rZXkYBCABKAlSCXB1YmxpY0tleRotChdBY2NvdW50UmVnaXN0cmF0aW9uQ29kZRISCgRjb2RlGAEgASgJUgRjb2RlGrMBCgpDcmVhdGVDaGF0EhIKBG5hbWUYASABKAlSBG5hbWUSGQoIc2VsZl9rZXkYAiABKAlSB3NlbGZLZXkSRwoKb3RoZXJfa2V5cxgDIAMoCzIoLm1haW4uQ2xpZW50TWVzc2FnZS5DcmVhdGVDaGF0LklkS2V5UGFpclIJb3RoZXJLZXlzGi0KCUlkS2V5UGFpchIOCgJpZBgBIAEoDVICaWQSEAoDa2V5GAIgASgJUgNrZXkaIgoQUmVxdWVzdFB1YmxpY0tleRIOCgJpZBgBIAEoDVICaWQaEQoPUmVxdWVzdFVzZXJMaXN0GhEKD1JlcXVlc3RDaGF0TGlzdBovChRSZXF1ZXN0Q2hhdFNoYXJlZEtleRIXCgdjaGF0X2lkGAEgASgNUgZjaGF0SWRCCQoHdmFyaWFudA==');
