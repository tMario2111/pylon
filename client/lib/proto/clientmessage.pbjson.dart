///
//  Generated code. Do not modify.
//  source: clientmessage.proto
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
    const {'1': 'greet', '3': 1, '4': 1, '5': 11, '6': '.main.ClientMessage.Greet', '9': 0, '10': 'greet'},
    const {'1': 'greet_with_id', '3': 2, '4': 1, '5': 11, '6': '.main.ClientMessage.GreetWithId', '9': 0, '10': 'greetWithId'},
    const {'1': 'send_public_key', '3': 3, '4': 1, '5': 11, '6': '.main.ClientMessage.sendPublicKey', '9': 0, '10': 'sendPublicKey'},
  ],
  '3': const [ClientMessage_Greet$json, ClientMessage_GreetWithId$json, ClientMessage_sendPublicKey$json],
  '8': const [
    const {'1': 'variant'},
  ],
};

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage_Greet$json = const {
  '1': 'Greet',
  '2': const [
    const {'1': 'content', '3': 1, '4': 1, '5': 9, '10': 'content'},
  ],
};

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage_GreetWithId$json = const {
  '1': 'GreetWithId',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
  ],
};

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage_sendPublicKey$json = const {
  '1': 'sendPublicKey',
  '2': const [
    const {'1': 'key_pem', '3': 1, '4': 1, '5': 9, '10': 'keyPem'},
  ],
};

/// Descriptor for `ClientMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientMessageDescriptor = $convert.base64Decode('Cg1DbGllbnRNZXNzYWdlEjEKBWdyZWV0GAEgASgLMhkubWFpbi5DbGllbnRNZXNzYWdlLkdyZWV0SABSBWdyZWV0EkUKDWdyZWV0X3dpdGhfaWQYAiABKAsyHy5tYWluLkNsaWVudE1lc3NhZ2UuR3JlZXRXaXRoSWRIAFILZ3JlZXRXaXRoSWQSSwoPc2VuZF9wdWJsaWNfa2V5GAMgASgLMiEubWFpbi5DbGllbnRNZXNzYWdlLnNlbmRQdWJsaWNLZXlIAFINc2VuZFB1YmxpY0tleRohCgVHcmVldBIYCgdjb250ZW50GAEgASgJUgdjb250ZW50GjcKC0dyZWV0V2l0aElkEg4KAmlkGAEgASgFUgJpZBIYCgdjb250ZW50GAIgASgJUgdjb250ZW50GigKDXNlbmRQdWJsaWNLZXkSFwoHa2V5X3BlbRgBIAEoCVIGa2V5UGVtQgkKB3ZhcmlhbnQ=');
