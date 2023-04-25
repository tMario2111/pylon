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
  ],
  '3': const [ServerMessage_ConfirmKeyExchange$json, ServerMessage_ConfirmLogIn$json, ServerMessage_AccountRegistrationResult$json, ServerMessage_AccountRegistrationCodeResult$json, ServerMessage_SendUserList$json],
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

/// Descriptor for `ServerMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverMessageDescriptor = $convert.base64Decode('Cg1TZXJ2ZXJNZXNzYWdlEloKFGNvbmZpcm1fa2V5X2V4Y2hhbmdlGAEgASgLMiYubWFpbi5TZXJ2ZXJNZXNzYWdlLkNvbmZpcm1LZXlFeGNoYW5nZUgAUhJjb25maXJtS2V5RXhjaGFuZ2USSAoOY29uZmlybV9sb2dfaW4YAiABKAsyIC5tYWluLlNlcnZlck1lc3NhZ2UuQ29uZmlybUxvZ0luSABSDGNvbmZpcm1Mb2dJbhJvChthY2NvdW50X3JlZ2lzdHJhdGlvbl9yZXN1bHQYAyABKAsyLS5tYWluLlNlcnZlck1lc3NhZ2UuQWNjb3VudFJlZ2lzdHJhdGlvblJlc3VsdEgAUhlhY2NvdW50UmVnaXN0cmF0aW9uUmVzdWx0EnwKIGFjY291bnRfcmVnaXN0cmF0aW9uX2NvZGVfcmVzdWx0GAQgASgLMjEubWFpbi5TZXJ2ZXJNZXNzYWdlLkFjY291bnRSZWdpc3RyYXRpb25Db2RlUmVzdWx0SABSHWFjY291bnRSZWdpc3RyYXRpb25Db2RlUmVzdWx0EkgKDnNlbmRfdXNlcl9saXN0GAUgASgLMiAubWFpbi5TZXJ2ZXJNZXNzYWdlLlNlbmRVc2VyTGlzdEgAUgxzZW5kVXNlckxpc3QaFAoSQ29uZmlybUtleUV4Y2hhbmdlGj4KDENvbmZpcm1Mb2dJbhIeCgpzdWNjZXNzZnVsGAEgASgIUgpzdWNjZXNzZnVsEg4KAmlkGAIgASgFUgJpZBrvAQoZQWNjb3VudFJlZ2lzdHJhdGlvblJlc3VsdBIeCgpzdWNjZXNzZnVsGAEgASgIUgpzdWNjZXNzZnVsEiQKC2VtYWlsX2Vycm9yGAIgASgJSABSCmVtYWlsRXJyb3KIAQESKgoOdXNlcm5hbWVfZXJyb3IYAyABKAlIAVINdXNlcm5hbWVFcnJvcogBARIqCg5wYXNzd29yZF9lcnJvchgEIAEoCUgCUg1wYXNzd29yZEVycm9yiAEBQg4KDF9lbWFpbF9lcnJvckIRCg9fdXNlcm5hbWVfZXJyb3JCEQoPX3Bhc3N3b3JkX2Vycm9yGooBCh1BY2NvdW50UmVnaXN0cmF0aW9uQ29kZVJlc3VsdBIeCgpzdWNjZXNzZnVsGAEgASgIUgpzdWNjZXNzZnVsEiQKDWNyaXRpY2FsRXJyb3IYAiABKAhSDWNyaXRpY2FsRXJyb3ISGQoFZXJyb3IYAyABKAlIAFIFZXJyb3KIAQFCCAoGX2Vycm9yGn8KDFNlbmRVc2VyTGlzdBI7CgV1c2VycxgBIAMoCzIlLm1haW4uU2VydmVyTWVzc2FnZS5TZW5kVXNlckxpc3QuVXNlclIFdXNlcnMaMgoEVXNlchIaCgh1c2VybmFtZRgBIAEoCVIIdXNlcm5hbWUSDgoCaWQYAiABKA1SAmlkQgkKB3ZhcmlhbnQ=');
