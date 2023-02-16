///
//  Generated code. Do not modify.
//  source: proto/servermessage.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ServerMessage_ConfirmKeyExchange extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServerMessage.ConfirmKeyExchange', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ServerMessage_ConfirmKeyExchange._() : super();
  factory ServerMessage_ConfirmKeyExchange() => create();
  factory ServerMessage_ConfirmKeyExchange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerMessage_ConfirmKeyExchange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServerMessage_ConfirmKeyExchange clone() => ServerMessage_ConfirmKeyExchange()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServerMessage_ConfirmKeyExchange copyWith(void Function(ServerMessage_ConfirmKeyExchange) updates) => super.copyWith((message) => updates(message as ServerMessage_ConfirmKeyExchange)) as ServerMessage_ConfirmKeyExchange; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServerMessage_ConfirmKeyExchange create() => ServerMessage_ConfirmKeyExchange._();
  ServerMessage_ConfirmKeyExchange createEmptyInstance() => create();
  static $pb.PbList<ServerMessage_ConfirmKeyExchange> createRepeated() => $pb.PbList<ServerMessage_ConfirmKeyExchange>();
  @$core.pragma('dart2js:noInline')
  static ServerMessage_ConfirmKeyExchange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerMessage_ConfirmKeyExchange>(create);
  static ServerMessage_ConfirmKeyExchange? _defaultInstance;
}

class ServerMessage_ConfirmLogIn extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServerMessage.ConfirmLogIn', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ServerMessage_ConfirmLogIn._() : super();
  factory ServerMessage_ConfirmLogIn({
    $core.int? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory ServerMessage_ConfirmLogIn.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerMessage_ConfirmLogIn.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServerMessage_ConfirmLogIn clone() => ServerMessage_ConfirmLogIn()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServerMessage_ConfirmLogIn copyWith(void Function(ServerMessage_ConfirmLogIn) updates) => super.copyWith((message) => updates(message as ServerMessage_ConfirmLogIn)) as ServerMessage_ConfirmLogIn; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServerMessage_ConfirmLogIn create() => ServerMessage_ConfirmLogIn._();
  ServerMessage_ConfirmLogIn createEmptyInstance() => create();
  static $pb.PbList<ServerMessage_ConfirmLogIn> createRepeated() => $pb.PbList<ServerMessage_ConfirmLogIn>();
  @$core.pragma('dart2js:noInline')
  static ServerMessage_ConfirmLogIn getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerMessage_ConfirmLogIn>(create);
  static ServerMessage_ConfirmLogIn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class ServerMessage_AccountRegistrationResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServerMessage.AccountRegistrationResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'successful')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'usernameError')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passwordError')
    ..hasRequiredFields = false
  ;

  ServerMessage_AccountRegistrationResult._() : super();
  factory ServerMessage_AccountRegistrationResult({
    $core.bool? successful,
    $core.String? usernameError,
    $core.String? passwordError,
  }) {
    final _result = create();
    if (successful != null) {
      _result.successful = successful;
    }
    if (usernameError != null) {
      _result.usernameError = usernameError;
    }
    if (passwordError != null) {
      _result.passwordError = passwordError;
    }
    return _result;
  }
  factory ServerMessage_AccountRegistrationResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerMessage_AccountRegistrationResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServerMessage_AccountRegistrationResult clone() => ServerMessage_AccountRegistrationResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServerMessage_AccountRegistrationResult copyWith(void Function(ServerMessage_AccountRegistrationResult) updates) => super.copyWith((message) => updates(message as ServerMessage_AccountRegistrationResult)) as ServerMessage_AccountRegistrationResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServerMessage_AccountRegistrationResult create() => ServerMessage_AccountRegistrationResult._();
  ServerMessage_AccountRegistrationResult createEmptyInstance() => create();
  static $pb.PbList<ServerMessage_AccountRegistrationResult> createRepeated() => $pb.PbList<ServerMessage_AccountRegistrationResult>();
  @$core.pragma('dart2js:noInline')
  static ServerMessage_AccountRegistrationResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerMessage_AccountRegistrationResult>(create);
  static ServerMessage_AccountRegistrationResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get successful => $_getBF(0);
  @$pb.TagNumber(1)
  set successful($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccessful() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccessful() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get usernameError => $_getSZ(1);
  @$pb.TagNumber(2)
  set usernameError($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsernameError() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsernameError() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get passwordError => $_getSZ(2);
  @$pb.TagNumber(3)
  set passwordError($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPasswordError() => $_has(2);
  @$pb.TagNumber(3)
  void clearPasswordError() => clearField(3);
}

enum ServerMessage_Variant {
  confirmKeyExchange, 
  confirmLogIn, 
  accountRegistrationResult, 
  notSet
}

class ServerMessage extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ServerMessage_Variant> _ServerMessage_VariantByTag = {
    1 : ServerMessage_Variant.confirmKeyExchange,
    2 : ServerMessage_Variant.confirmLogIn,
    3 : ServerMessage_Variant.accountRegistrationResult,
    0 : ServerMessage_Variant.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServerMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<ServerMessage_ConfirmKeyExchange>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'confirmKeyExchange', subBuilder: ServerMessage_ConfirmKeyExchange.create)
    ..aOM<ServerMessage_ConfirmLogIn>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'confirmLogIn', subBuilder: ServerMessage_ConfirmLogIn.create)
    ..aOM<ServerMessage_AccountRegistrationResult>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountRegistrationResult', subBuilder: ServerMessage_AccountRegistrationResult.create)
    ..hasRequiredFields = false
  ;

  ServerMessage._() : super();
  factory ServerMessage({
    ServerMessage_ConfirmKeyExchange? confirmKeyExchange,
    ServerMessage_ConfirmLogIn? confirmLogIn,
    ServerMessage_AccountRegistrationResult? accountRegistrationResult,
  }) {
    final _result = create();
    if (confirmKeyExchange != null) {
      _result.confirmKeyExchange = confirmKeyExchange;
    }
    if (confirmLogIn != null) {
      _result.confirmLogIn = confirmLogIn;
    }
    if (accountRegistrationResult != null) {
      _result.accountRegistrationResult = accountRegistrationResult;
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
  ServerMessage_ConfirmKeyExchange get confirmKeyExchange => $_getN(0);
  @$pb.TagNumber(1)
  set confirmKeyExchange(ServerMessage_ConfirmKeyExchange v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConfirmKeyExchange() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfirmKeyExchange() => clearField(1);
  @$pb.TagNumber(1)
  ServerMessage_ConfirmKeyExchange ensureConfirmKeyExchange() => $_ensure(0);

  @$pb.TagNumber(2)
  ServerMessage_ConfirmLogIn get confirmLogIn => $_getN(1);
  @$pb.TagNumber(2)
  set confirmLogIn(ServerMessage_ConfirmLogIn v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConfirmLogIn() => $_has(1);
  @$pb.TagNumber(2)
  void clearConfirmLogIn() => clearField(2);
  @$pb.TagNumber(2)
  ServerMessage_ConfirmLogIn ensureConfirmLogIn() => $_ensure(1);

  @$pb.TagNumber(3)
  ServerMessage_AccountRegistrationResult get accountRegistrationResult => $_getN(2);
  @$pb.TagNumber(3)
  set accountRegistrationResult(ServerMessage_AccountRegistrationResult v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountRegistrationResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountRegistrationResult() => clearField(3);
  @$pb.TagNumber(3)
  ServerMessage_AccountRegistrationResult ensureAccountRegistrationResult() => $_ensure(2);
}

