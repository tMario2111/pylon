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
  ],
  '3': const [ServerMessage_ConfirmKeyExchange$json],
  '8': const [
    const {'1': 'variant'},
  ],
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_ConfirmKeyExchange$json = const {
  '1': 'ConfirmKeyExchange',
};

/// Descriptor for `ServerMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverMessageDescriptor = $convert.base64Decode('Cg1TZXJ2ZXJNZXNzYWdlEloKFGNvbmZpcm1fa2V5X2V4Y2hhbmdlGAEgASgLMiYubWFpbi5TZXJ2ZXJNZXNzYWdlLkNvbmZpcm1LZXlFeGNoYW5nZUgAUhJjb25maXJtS2V5RXhjaGFuZ2UaFAoSQ29uZmlybUtleUV4Y2hhbmdlQgkKB3ZhcmlhbnQ=');
