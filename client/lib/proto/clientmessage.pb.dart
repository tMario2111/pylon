///
//  Generated code. Do not modify.
//  source: clientmessage.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ClientMessage_Greet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientMessage.Greet', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..hasRequiredFields = false
  ;

  ClientMessage_Greet._() : super();
  factory ClientMessage_Greet({
    $core.String? content,
  }) {
    final _result = create();
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory ClientMessage_Greet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientMessage_Greet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientMessage_Greet clone() => ClientMessage_Greet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientMessage_Greet copyWith(void Function(ClientMessage_Greet) updates) => super.copyWith((message) => updates(message as ClientMessage_Greet)) as ClientMessage_Greet; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientMessage_Greet create() => ClientMessage_Greet._();
  ClientMessage_Greet createEmptyInstance() => create();
  static $pb.PbList<ClientMessage_Greet> createRepeated() => $pb.PbList<ClientMessage_Greet>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage_Greet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientMessage_Greet>(create);
  static ClientMessage_Greet? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get content => $_getSZ(0);
  @$pb.TagNumber(1)
  set content($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearContent() => clearField(1);
}

class ClientMessage_GreetWithId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientMessage.GreetWithId', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..hasRequiredFields = false
  ;

  ClientMessage_GreetWithId._() : super();
  factory ClientMessage_GreetWithId({
    $core.int? id,
    $core.String? content,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory ClientMessage_GreetWithId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientMessage_GreetWithId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientMessage_GreetWithId clone() => ClientMessage_GreetWithId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientMessage_GreetWithId copyWith(void Function(ClientMessage_GreetWithId) updates) => super.copyWith((message) => updates(message as ClientMessage_GreetWithId)) as ClientMessage_GreetWithId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientMessage_GreetWithId create() => ClientMessage_GreetWithId._();
  ClientMessage_GreetWithId createEmptyInstance() => create();
  static $pb.PbList<ClientMessage_GreetWithId> createRepeated() => $pb.PbList<ClientMessage_GreetWithId>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage_GreetWithId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientMessage_GreetWithId>(create);
  static ClientMessage_GreetWithId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
}

class ClientMessage_sendPublicKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientMessage.sendPublicKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyPem')
    ..hasRequiredFields = false
  ;

  ClientMessage_sendPublicKey._() : super();
  factory ClientMessage_sendPublicKey({
    $core.String? keyPem,
  }) {
    final _result = create();
    if (keyPem != null) {
      _result.keyPem = keyPem;
    }
    return _result;
  }
  factory ClientMessage_sendPublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientMessage_sendPublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientMessage_sendPublicKey clone() => ClientMessage_sendPublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientMessage_sendPublicKey copyWith(void Function(ClientMessage_sendPublicKey) updates) => super.copyWith((message) => updates(message as ClientMessage_sendPublicKey)) as ClientMessage_sendPublicKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientMessage_sendPublicKey create() => ClientMessage_sendPublicKey._();
  ClientMessage_sendPublicKey createEmptyInstance() => create();
  static $pb.PbList<ClientMessage_sendPublicKey> createRepeated() => $pb.PbList<ClientMessage_sendPublicKey>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage_sendPublicKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientMessage_sendPublicKey>(create);
  static ClientMessage_sendPublicKey? _defaultInstance;

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
  greet, 
  greetWithId, 
  sendPublicKey, 
  notSet
}

class ClientMessage extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ClientMessage_Variant> _ClientMessage_VariantByTag = {
    1 : ClientMessage_Variant.greet,
    2 : ClientMessage_Variant.greetWithId,
    3 : ClientMessage_Variant.sendPublicKey,
    0 : ClientMessage_Variant.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<ClientMessage_Greet>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'greet', subBuilder: ClientMessage_Greet.create)
    ..aOM<ClientMessage_GreetWithId>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'greetWithId', subBuilder: ClientMessage_GreetWithId.create)
    ..aOM<ClientMessage_sendPublicKey>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sendPublicKey', subBuilder: ClientMessage_sendPublicKey.create)
    ..hasRequiredFields = false
  ;

  ClientMessage._() : super();
  factory ClientMessage({
    ClientMessage_Greet? greet,
    ClientMessage_GreetWithId? greetWithId,
    ClientMessage_sendPublicKey? sendPublicKey,
  }) {
    final _result = create();
    if (greet != null) {
      _result.greet = greet;
    }
    if (greetWithId != null) {
      _result.greetWithId = greetWithId;
    }
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
  ClientMessage_Greet get greet => $_getN(0);
  @$pb.TagNumber(1)
  set greet(ClientMessage_Greet v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGreet() => $_has(0);
  @$pb.TagNumber(1)
  void clearGreet() => clearField(1);
  @$pb.TagNumber(1)
  ClientMessage_Greet ensureGreet() => $_ensure(0);

  @$pb.TagNumber(2)
  ClientMessage_GreetWithId get greetWithId => $_getN(1);
  @$pb.TagNumber(2)
  set greetWithId(ClientMessage_GreetWithId v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasGreetWithId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGreetWithId() => clearField(2);
  @$pb.TagNumber(2)
  ClientMessage_GreetWithId ensureGreetWithId() => $_ensure(1);

  @$pb.TagNumber(3)
  ClientMessage_sendPublicKey get sendPublicKey => $_getN(2);
  @$pb.TagNumber(3)
  set sendPublicKey(ClientMessage_sendPublicKey v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSendPublicKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearSendPublicKey() => clearField(3);
  @$pb.TagNumber(3)
  ClientMessage_sendPublicKey ensureSendPublicKey() => $_ensure(2);
}

