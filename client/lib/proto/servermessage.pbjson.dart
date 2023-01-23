///
//  Generated code. Do not modify.
//  source: servermessage.proto
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
    const {'1': 'greet_back', '3': 1, '4': 1, '5': 11, '6': '.main.ServerMessage.GreetBack', '9': 0, '10': 'greetBack'},
    const {'1': 'encrypted_greet', '3': 2, '4': 1, '5': 11, '6': '.main.ServerMessage.EncryptedGreet', '9': 0, '10': 'encryptedGreet'},
  ],
  '3': const [ServerMessage_GreetBack$json, ServerMessage_EncryptedGreet$json],
  '8': const [
    const {'1': 'variant'},
  ],
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_GreetBack$json = const {
  '1': 'GreetBack',
  '2': const [
    const {'1': 'content', '3': 1, '4': 1, '5': 9, '10': 'content'},
  ],
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_EncryptedGreet$json = const {
  '1': 'EncryptedGreet',
  '2': const [
    const {'1': 'content', '3': 1, '4': 1, '5': 12, '10': 'content'},
    const {'1': 'key', '3': 2, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'iv', '3': 3, '4': 1, '5': 12, '10': 'iv'},
  ],
};

/// Descriptor for `ServerMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverMessageDescriptor = $convert.base64Decode('Cg1TZXJ2ZXJNZXNzYWdlEj4KCmdyZWV0X2JhY2sYASABKAsyHS5tYWluLlNlcnZlck1lc3NhZ2UuR3JlZXRCYWNrSABSCWdyZWV0QmFjaxJNCg9lbmNyeXB0ZWRfZ3JlZXQYAiABKAsyIi5tYWluLlNlcnZlck1lc3NhZ2UuRW5jcnlwdGVkR3JlZXRIAFIOZW5jcnlwdGVkR3JlZXQaJQoJR3JlZXRCYWNrEhgKB2NvbnRlbnQYASABKAlSB2NvbnRlbnQaTAoORW5jcnlwdGVkR3JlZXQSGAoHY29udGVudBgBIAEoDFIHY29udGVudBIQCgNrZXkYAiABKAxSA2tleRIOCgJpdhgDIAEoDFICaXZCCQoHdmFyaWFudA==');
