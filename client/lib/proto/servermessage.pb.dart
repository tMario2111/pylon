///
//  Generated code. Do not modify.
//  source: servermessage.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ServerMessage_GreetBack extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServerMessage.GreetBack', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..hasRequiredFields = false
  ;

  ServerMessage_GreetBack._() : super();
  factory ServerMessage_GreetBack({
    $core.String? content,
  }) {
    final _result = create();
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory ServerMessage_GreetBack.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerMessage_GreetBack.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServerMessage_GreetBack clone() => ServerMessage_GreetBack()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServerMessage_GreetBack copyWith(void Function(ServerMessage_GreetBack) updates) => super.copyWith((message) => updates(message as ServerMessage_GreetBack)) as ServerMessage_GreetBack; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServerMessage_GreetBack create() => ServerMessage_GreetBack._();
  ServerMessage_GreetBack createEmptyInstance() => create();
  static $pb.PbList<ServerMessage_GreetBack> createRepeated() => $pb.PbList<ServerMessage_GreetBack>();
  @$core.pragma('dart2js:noInline')
  static ServerMessage_GreetBack getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerMessage_GreetBack>(create);
  static ServerMessage_GreetBack? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get content => $_getSZ(0);
  @$pb.TagNumber(1)
  set content($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearContent() => clearField(1);
}

class ServerMessage_EncryptedGreet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServerMessage.EncryptedGreet', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'iv', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ServerMessage_EncryptedGreet._() : super();
  factory ServerMessage_EncryptedGreet({
    $core.List<$core.int>? content,
    $core.List<$core.int>? key,
    $core.List<$core.int>? iv,
  }) {
    final _result = create();
    if (content != null) {
      _result.content = content;
    }
    if (key != null) {
      _result.key = key;
    }
    if (iv != null) {
      _result.iv = iv;
    }
    return _result;
  }
  factory ServerMessage_EncryptedGreet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerMessage_EncryptedGreet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServerMessage_EncryptedGreet clone() => ServerMessage_EncryptedGreet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServerMessage_EncryptedGreet copyWith(void Function(ServerMessage_EncryptedGreet) updates) => super.copyWith((message) => updates(message as ServerMessage_EncryptedGreet)) as ServerMessage_EncryptedGreet; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServerMessage_EncryptedGreet create() => ServerMessage_EncryptedGreet._();
  ServerMessage_EncryptedGreet createEmptyInstance() => create();
  static $pb.PbList<ServerMessage_EncryptedGreet> createRepeated() => $pb.PbList<ServerMessage_EncryptedGreet>();
  @$core.pragma('dart2js:noInline')
  static ServerMessage_EncryptedGreet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerMessage_EncryptedGreet>(create);
  static ServerMessage_EncryptedGreet? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get content => $_getN(0);
  @$pb.TagNumber(1)
  set content($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearContent() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get key => $_getN(1);
  @$pb.TagNumber(2)
  set key($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get iv => $_getN(2);
  @$pb.TagNumber(3)
  set iv($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIv() => $_has(2);
  @$pb.TagNumber(3)
  void clearIv() => clearField(3);
}

enum ServerMessage_Variant {
  greetBack, 
  encryptedGreet, 
  notSet
}

class ServerMessage extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ServerMessage_Variant> _ServerMessage_VariantByTag = {
    1 : ServerMessage_Variant.greetBack,
    2 : ServerMessage_Variant.encryptedGreet,
    0 : ServerMessage_Variant.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServerMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ServerMessage_GreetBack>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'greetBack', subBuilder: ServerMessage_GreetBack.create)
    ..aOM<ServerMessage_EncryptedGreet>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'encryptedGreet', subBuilder: ServerMessage_EncryptedGreet.create)
    ..hasRequiredFields = false
  ;

  ServerMessage._() : super();
  factory ServerMessage({
    ServerMessage_GreetBack? greetBack,
    ServerMessage_EncryptedGreet? encryptedGreet,
  }) {
    final _result = create();
    if (greetBack != null) {
      _result.greetBack = greetBack;
    }
    if (encryptedGreet != null) {
      _result.encryptedGreet = encryptedGreet;
    }
    return _result;
  }
  factory ServerMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServerMessage clone() => ServerMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServerMessage copyWith(void Function(ServerMessage) updates) => super.copyWith((message) => updates(message as ServerMessage)) as ServerMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServerMessage create() => ServerMessage._();
  ServerMessage createEmptyInstance() => create();
  static $pb.PbList<ServerMessage> createRepeated() => $pb.PbList<ServerMessage>();
  @$core.pragma('dart2js:noInline')
  static ServerMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerMessage>(create);
  static ServerMessage? _defaultInstance;

  ServerMessage_Variant whichVariant() => _ServerMessage_VariantByTag[$_whichOneof(0)]!;
  void clearVariant() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ServerMessage_GreetBack get greetBack => $_getN(0);
  @$pb.TagNumber(1)
  set greetBack(ServerMessage_GreetBack v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGreetBack() => $_has(0);
  @$pb.TagNumber(1)
  void clearGreetBack() => clearField(1);
  @$pb.TagNumber(1)
  ServerMessage_GreetBack ensureGreetBack() => $_ensure(0);

  @$pb.TagNumber(2)
  ServerMessage_EncryptedGreet get encryptedGreet => $_getN(1);
  @$pb.TagNumber(2)
  set encryptedGreet(ServerMessage_EncryptedGreet v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEncryptedGreet() => $_has(1);
  @$pb.TagNumber(2)
  void clearEncryptedGreet() => clearField(2);
  @$pb.TagNumber(2)
  ServerMessage_EncryptedGreet ensureEncryptedGreet() => $_ensure(1);
}

