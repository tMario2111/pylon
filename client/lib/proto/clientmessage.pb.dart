///
//  Generated code. Do not modify.
//  source: proto/clientmessage.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ClientMessage_SendPublicKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientMessage.SendPublicKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyPem')
    ..hasRequiredFields = false
  ;

  ClientMessage_SendPublicKey._() : super();
  factory ClientMessage_SendPublicKey({
    $core.String? keyPem,
  }) {
    final _result = create();
    if (keyPem != null) {
      _result.keyPem = keyPem;
    }
    return _result;
  }
  factory ClientMessage_SendPublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientMessage_SendPublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientMessage_SendPublicKey clone() => ClientMessage_SendPublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientMessage_SendPublicKey copyWith(void Function(ClientMessage_SendPublicKey) updates) => super.copyWith((message) => updates(message as ClientMessage_SendPublicKey)) as ClientMessage_SendPublicKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientMessage_SendPublicKey create() => ClientMessage_SendPublicKey._();
  ClientMessage_SendPublicKey createEmptyInstance() => create();
  static $pb.PbList<ClientMessage_SendPublicKey> createRepeated() => $pb.PbList<ClientMessage_SendPublicKey>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage_SendPublicKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientMessage_SendPublicKey>(create);
  static ClientMessage_SendPublicKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get keyPem => $_getSZ(0);
  @$pb.TagNumber(1)
  set keyPem($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyPem() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyPem() => clearField(1);
}

enum ClientMessage_Variant {
  sendPublicKey, 
  notSet
}

class ClientMessage extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ClientMessage_Variant> _ClientMessage_VariantByTag = {
    1 : ClientMessage_Variant.sendPublicKey,
    0 : ClientMessage_Variant.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<ClientMessage_SendPublicKey>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sendPublicKey', subBuilder: ClientMessage_SendPublicKey.create)
    ..hasRequiredFields = false
  ;

  ClientMessage._() : super();
  factory ClientMessage({
    ClientMessage_SendPublicKey? sendPublicKey,
  }) {
    final _result = create();
    if (sendPublicKey != null) {
      _result.sendPublicKey = sendPublicKey;
    }
    return _result;
  }
  factory ClientMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientMessage clone() => ClientMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientMessage copyWith(void Function(ClientMessage) updates) => super.copyWith((message) => updates(message as ClientMessage)) as ClientMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientMessage create() => ClientMessage._();
  ClientMessage createEmptyInstance() => create();
  static $pb.PbList<ClientMessage> createRepeated() => $pb.PbList<ClientMessage>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientMessage>(create);
  static ClientMessage? _defaultInstance;

  ClientMessage_Variant whichVariant() => _ClientMessage_VariantByTag[$_whichOneof(0)]!;
  void clearVariant() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ClientMessage_SendPublicKey get sendPublicKey => $_getN(0);
  @$pb.TagNumber(1)
  set sendPublicKey(ClientMessage_SendPublicKey v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSendPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearSendPublicKey() => clearField(1);
  @$pb.TagNumber(1)
  ClientMessage_SendPublicKey ensureSendPublicKey() => $_ensure(0);
}

