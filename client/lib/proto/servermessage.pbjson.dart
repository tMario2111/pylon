///
//  Generated code. Do not modify.
//  source: proto/servermessage.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage$json = const {
  '1': 'ServerMessage',
  '2': const [
    const {'1': 'confirm_key_exchange', '3': 1, '4': 1, '5': 11, '6': '.main.ServerMessage.ConfirmKeyExchange', '9': 0, '10': 'confirmKeyExchange'},
    const {'1': 'confirm_log_in', '3': 2, '4': 1, '5': 11, '6': '.main.ServerMessage.ConfirmLogIn', '9': 0, '10': 'confirmLogIn'},
    const {'1': 'account_registration_result', '3': 3, '4': 1, '5': 11, '6': '.main.ServerMessage.AccountRegistrationResult', '9': 0, '10': 'accountRegistrationResult'},
    const {'1': 'account_registration_code_result', '3': 4, '4': 1, '5': 11, '6': '.main.ServerMessage.AccountRegistrationCodeResult', '9': 0, '10': 'accountRegistrationCodeResult'},
    const {'1': 'send_user_list', '3': 5, '4': 1, '5': 11, '6': '.main.ServerMessage.SendUserList', '9': 0, '10': 'sendUserList'},
    const {'1': 'send_public_key', '3': 6, '4': 1, '5': 11, '6': '.main.ServerMessage.SendPublicKey', '9': 0, '10': 'sendPublicKey'},
    const {'1': 'send_chat_list', '3': 7, '4': 1, '5': 11, '6': '.main.ServerMessage.SendChatList', '9': 0, '10': 'sendChatList'},
    const {'1': 'send_chat_shared_key', '3': 8, '4': 1, '5': 11, '6': '.main.ServerMessage.SendChatSharedKey', '9': 0, '10': 'sendChatSharedKey'},
    const {'1': 'send_messages', '3': 9, '4': 1, '5': 11, '6': '.main.ServerMessage.SendMessages', '9': 0, '10': 'sendMessages'},
  ],
  '3': const [ServerMessage_ConfirmKeyExchange$json, ServerMessage_ConfirmLogIn$json, ServerMessage_AccountRegistrationResult$json, ServerMessage_AccountRegistrationCodeResult$json, ServerMessage_SendUserList$json, ServerMessage_SendPublicKey$json, ServerMessage_SendChatList$json, ServerMessage_SendChatSharedKey$json, ServerMessage_SendMessages$json],
  '8': const [
    const {'1': 'variant'},
  ],
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_ConfirmKeyExchange$json = const {
  '1': 'ConfirmKeyExchange',
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_ConfirmLogIn$json = const {
  '1': 'ConfirmLogIn',
  '2': const [
    const {'1': 'successful', '3': 1, '4': 1, '5': 8, '10': 'successful'},
    const {'1': 'id', '3': 2, '4': 1, '5': 5, '10': 'id'},
  ],
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_AccountRegistrationResult$json = const {
  '1': 'AccountRegistrationResult',
  '2': const [
    const {'1': 'successful', '3': 1, '4': 1, '5': 8, '10': 'successful'},
    const {'1': 'email_error', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'emailError', '17': true},
    const {'1': 'username_error', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'usernameError', '17': true},
    const {'1': 'password_error', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'passwordError', '17': true},
  ],
  '8': const [
    const {'1': '_email_error'},
    const {'1': '_username_error'},
    const {'1': '_password_error'},
  ],
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_AccountRegistrationCodeResult$json = const {
  '1': 'AccountRegistrationCodeResult',
  '2': const [
    const {'1': 'successful', '3': 1, '4': 1, '5': 8, '10': 'successful'},
    const {'1': 'criticalError', '3': 2, '4': 1, '5': 8, '10': 'criticalError'},
    const {'1': 'error', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'error', '17': true},
  ],
  '8': const [
    const {'1': '_error'},
  ],
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_SendUserList$json = const {
  '1': 'SendUserList',
  '2': const [
    const {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.main.ServerMessage.SendUserList.User', '10': 'users'},
  ],
  '3': const [ServerMessage_SendUserList_User$json],
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_SendUserList_User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'id', '3': 2, '4': 1, '5': 13, '10': 'id'},
  ],
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_SendPublicKey$json = const {
  '1': 'SendPublicKey',
  '2': const [
    const {'1': 'public_key', '3': 1, '4': 1, '5': 9, '10': 'publicKey'},
  ],
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_SendChatList$json = const {
  '1': 'SendChatList',
  '2': const [
    const {'1': 'chats', '3': 1, '4': 3, '5': 11, '6': '.main.ServerMessage.SendChatList.Chat', '10': 'chats'},
  ],
  '3': const [ServerMessage_SendChatList_Chat$json],
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_SendChatList_Chat$json = const {
  '1': 'Chat',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'recipient_username', '3': 2, '4': 1, '5': 9, '10': 'recipientUsername'},
    const {'1': 'recipient_id', '3': 3, '4': 1, '5': 13, '10': 'recipientId'},
  ],
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_SendChatSharedKey$json = const {
  '1': 'SendChatSharedKey',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
  ],
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_SendMessages$json = const {
  '1': 'SendMessages',
  '2': const [
    const {'1': 'messages', '3': 1, '4': 3, '5': 11, '6': '.main.ServerMessage.SendMessages.Message', '10': 'messages'},
  ],
  '3': const [ServerMessage_SendMessages_Message$json],
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_SendMessages_Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 13, '10': 'userId'},
    const {'1': 'content', '3': 3, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'timestamp', '3': 4, '4': 1, '5': 4, '10': 'timestamp'},
    const {'1': 'iv', '3': 5, '4': 1, '5': 9, '10': 'iv'},
    const {'1': 'signature', '3': 6, '4': 1, '5': 9, '10': 'signature'},
  ],
};

/// Descriptor for `ServerMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverMessageDescriptor = $convert.base64Decode('Cg1TZXJ2ZXJNZXNzYWdlEloKFGNvbmZpcm1fa2V5X2V4Y2hhbmdlGAEgASgLMiYubWFpbi5TZXJ2ZXJNZXNzYWdlLkNvbmZpcm1LZXlFeGNoYW5nZUgAUhJjb25maXJtS2V5RXhjaGFuZ2USSAoOY29uZmlybV9sb2dfaW4YAiABKAsyIC5tYWluLlNlcnZlck1lc3NhZ2UuQ29uZmlybUxvZ0luSABSDGNvbmZpcm1Mb2dJbhJvChthY2NvdW50X3JlZ2lzdHJhdGlvbl9yZXN1bHQYAyABKAsyLS5tYWluLlNlcnZlck1lc3NhZ2UuQWNjb3VudFJlZ2lzdHJhdGlvblJlc3VsdEgAUhlhY2NvdW50UmVnaXN0cmF0aW9uUmVzdWx0EnwKIGFjY291bnRfcmVnaXN0cmF0aW9uX2NvZGVfcmVzdWx0GAQgASgLMjEubWFpbi5TZXJ2ZXJNZXNzYWdlLkFjY291bnRSZWdpc3RyYXRpb25Db2RlUmVzdWx0SABSHWFjY291bnRSZWdpc3RyYXRpb25Db2RlUmVzdWx0EkgKDnNlbmRfdXNlcl9saXN0GAUgASgLMiAubWFpbi5TZXJ2ZXJNZXNzYWdlLlNlbmRVc2VyTGlzdEgAUgxzZW5kVXNlckxpc3QSSwoPc2VuZF9wdWJsaWNfa2V5GAYgASgLMiEubWFpbi5TZXJ2ZXJNZXNzYWdlLlNlbmRQdWJsaWNLZXlIAFINc2VuZFB1YmxpY0tleRJICg5zZW5kX2NoYXRfbGlzdBgHIAEoCzIgLm1haW4uU2VydmVyTWVzc2FnZS5TZW5kQ2hhdExpc3RIAFIMc2VuZENoYXRMaXN0ElgKFHNlbmRfY2hhdF9zaGFyZWRfa2V5GAggASgLMiUubWFpbi5TZXJ2ZXJNZXNzYWdlLlNlbmRDaGF0U2hhcmVkS2V5SABSEXNlbmRDaGF0U2hhcmVkS2V5EkcKDXNlbmRfbWVzc2FnZXMYCSABKAsyIC5tYWluLlNlcnZlck1lc3NhZ2UuU2VuZE1lc3NhZ2VzSABSDHNlbmRNZXNzYWdlcxoUChJDb25maXJtS2V5RXhjaGFuZ2UaPgoMQ29uZmlybUxvZ0luEh4KCnN1Y2Nlc3NmdWwYASABKAhSCnN1Y2Nlc3NmdWwSDgoCaWQYAiABKAVSAmlkGu8BChlBY2NvdW50UmVnaXN0cmF0aW9uUmVzdWx0Eh4KCnN1Y2Nlc3NmdWwYASABKAhSCnN1Y2Nlc3NmdWwSJAoLZW1haWxfZXJyb3IYAiABKAlIAFIKZW1haWxFcnJvcogBARIqCg51c2VybmFtZV9lcnJvchgDIAEoCUgBUg11c2VybmFtZUVycm9yiAEBEioKDnBhc3N3b3JkX2Vycm9yGAQgASgJSAJSDXBhc3N3b3JkRXJyb3KIAQFCDgoMX2VtYWlsX2Vycm9yQhEKD191c2VybmFtZV9lcnJvckIRCg9fcGFzc3dvcmRfZXJyb3IaigEKHUFjY291bnRSZWdpc3RyYXRpb25Db2RlUmVzdWx0Eh4KCnN1Y2Nlc3NmdWwYASABKAhSCnN1Y2Nlc3NmdWwSJAoNY3JpdGljYWxFcnJvchgCIAEoCFINY3JpdGljYWxFcnJvchIZCgVlcnJvchgDIAEoCUgAUgVlcnJvcogBAUIICgZfZXJyb3IafwoMU2VuZFVzZXJMaXN0EjsKBXVzZXJzGAEgAygLMiUubWFpbi5TZXJ2ZXJNZXNzYWdlLlNlbmRVc2VyTGlzdC5Vc2VyUgV1c2VycxoyCgRVc2VyEhoKCHVzZXJuYW1lGAEgASgJUgh1c2VybmFtZRIOCgJpZBgCIAEoDVICaWQaLgoNU2VuZFB1YmxpY0tleRIdCgpwdWJsaWNfa2V5GAEgASgJUglwdWJsaWNLZXkatQEKDFNlbmRDaGF0TGlzdBI7CgVjaGF0cxgBIAMoCzIlLm1haW4uU2VydmVyTWVzc2FnZS5TZW5kQ2hhdExpc3QuQ2hhdFIFY2hhdHMaaAoEQ2hhdBIOCgJpZBgBIAEoDVICaWQSLQoScmVjaXBpZW50X3VzZXJuYW1lGAIgASgJUhFyZWNpcGllbnRVc2VybmFtZRIhCgxyZWNpcGllbnRfaWQYAyABKA1SC3JlY2lwaWVudElkGiUKEVNlbmRDaGF0U2hhcmVkS2V5EhAKA2tleRgBIAEoCVIDa2V5Gu8BCgxTZW5kTWVzc2FnZXMSRAoIbWVzc2FnZXMYASADKAsyKC5tYWluLlNlcnZlck1lc3NhZ2UuU2VuZE1lc3NhZ2VzLk1lc3NhZ2VSCG1lc3NhZ2VzGpgBCgdNZXNzYWdlEg4KAmlkGAEgASgNUgJpZBIXCgd1c2VyX2lkGAIgASgNUgZ1c2VySWQSGAoHY29udGVudBgDIAEoCVIHY29udGVudBIcCgl0aW1lc3RhbXAYBCABKARSCXRpbWVzdGFtcBIOCgJpdhgFIAEoCVICaXYSHAoJc2lnbmF0dXJlGAYgASgJUglzaWduYXR1cmVCCQoHdmFyaWFudA==');
