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
  ],
  '3': const [ClientMessage_SendPublicKey$json],
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

/// Descriptor for `ClientMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientMessageDescriptor = $convert.base64Decode('Cg1DbGllbnRNZXNzYWdlEksKD3NlbmRfcHVibGljX2tleRgBIAEoCzIhLm1haW4uQ2xpZW50TWVzc2FnZS5TZW5kUHVibGljS2V5SABSDXNlbmRQdWJsaWNLZXkaKAoNU2VuZFB1YmxpY0tleRIXCgdrZXlfcGVtGAEgASgJUgZrZXlQZW1CCQoHdmFyaWFudA==');