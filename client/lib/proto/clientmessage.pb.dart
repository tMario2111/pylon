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

class ClientMessage_LogIn extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientMessage.LogIn', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  ClientMessage_LogIn._() : super();
  factory ClientMessage_LogIn({
    $core.String? email,
    $core.String? password,
  }) {
    final _result = create();
    if (email != null) {
      _result.email = email;
    }
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory ClientMessage_LogIn.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientMessage_LogIn.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientMessage_LogIn clone() => ClientMessage_LogIn()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientMessage_LogIn copyWith(void Function(ClientMessage_LogIn) updates) => super.copyWith((message) => updates(message as ClientMessage_LogIn)) as ClientMessage_LogIn; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientMessage_LogIn create() => ClientMessage_LogIn._();
  ClientMessage_LogIn createEmptyInstance() => create();
  static $pb.PbList<ClientMessage_LogIn> createRepeated() => $pb.PbList<ClientMessage_LogIn>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage_LogIn getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientMessage_LogIn>(create);
  static ClientMessage_LogIn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class ClientMessage_AccountRegistration extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientMessage.AccountRegistration', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKey')
    ..hasRequiredFields = false
  ;

  ClientMessage_AccountRegistration._() : super();
  factory ClientMessage_AccountRegistration({
    $core.String? email,
    $core.String? username,
    $core.String? password,
    $core.String? publicKey,
  }) {
    final _result = create();
    if (email != null) {
      _result.email = email;
    }
    if (username != null) {
      _result.username = username;
    }
    if (password != null) {
      _result.password = password;
    }
    if (publicKey != null) {
      _result.publicKey = publicKey;
    }
    return _result;
  }
  factory ClientMessage_AccountRegistration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientMessage_AccountRegistration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientMessage_AccountRegistration clone() => ClientMessage_AccountRegistration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientMessage_AccountRegistration copyWith(void Function(ClientMessage_AccountRegistration) updates) => super.copyWith((message) => updates(message as ClientMessage_AccountRegistration)) as ClientMessage_AccountRegistration; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientMessage_AccountRegistration create() => ClientMessage_AccountRegistration._();
  ClientMessage_AccountRegistration createEmptyInstance() => create();
  static $pb.PbList<ClientMessage_AccountRegistration> createRepeated() => $pb.PbList<ClientMessage_AccountRegistration>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage_AccountRegistration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientMessage_AccountRegistration>(create);
  static ClientMessage_AccountRegistration? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get password => $_getSZ(2);
  @$pb.TagNumber(3)
  set password($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearPassword() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get publicKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set publicKey($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPublicKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearPublicKey() => clearField(4);
}

class ClientMessage_AccountRegistrationCode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientMessage.AccountRegistrationCode', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code')
    ..hasRequiredFields = false
  ;

  ClientMessage_AccountRegistrationCode._() : super();
  factory ClientMessage_AccountRegistrationCode({
    $core.String? code,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    return _result;
  }
  factory ClientMessage_AccountRegistrationCode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientMessage_AccountRegistrationCode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientMessage_AccountRegistrationCode clone() => ClientMessage_AccountRegistrationCode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientMessage_AccountRegistrationCode copyWith(void Function(ClientMessage_AccountRegistrationCode) updates) => super.copyWith((message) => updates(message as ClientMessage_AccountRegistrationCode)) as ClientMessage_AccountRegistrationCode; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientMessage_AccountRegistrationCode create() => ClientMessage_AccountRegistrationCode._();
  ClientMessage_AccountRegistrationCode createEmptyInstance() => create();
  static $pb.PbList<ClientMessage_AccountRegistrationCode> createRepeated() => $pb.PbList<ClientMessage_AccountRegistrationCode>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage_AccountRegistrationCode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientMessage_AccountRegistrationCode>(create);
  static ClientMessage_AccountRegistrationCode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);
}

enum ClientMessage_Variant {
  sendPublicKey, 
  logIn, 
  accountRegistration, 
  accountRegistrationCode, 
  notSet
}

class ClientMessage extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ClientMessage_Variant> _ClientMessage_VariantByTag = {
    1 : ClientMessage_Variant.sendPublicKey,
    2 : ClientMessage_Variant.logIn,
    3 : ClientMessage_Variant.accountRegistration,
    4 : ClientMessage_Variant.accountRegistrationCode,
    0 : ClientMessage_Variant.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<ClientMessage_SendPublicKey>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sendPublicKey', subBuilder: ClientMessage_SendPublicKey.create)
    ..aOM<ClientMessage_LogIn>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'logIn', subBuilder: ClientMessage_LogIn.create)
    ..aOM<ClientMessage_AccountRegistration>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountRegistration', subBuilder: ClientMessage_AccountRegistration.create)
    ..aOM<ClientMessage_AccountRegistrationCode>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountRegistrationCode', subBuilder: ClientMessage_AccountRegistrationCode.create)
    ..hasRequiredFields = false
  ;

  ClientMessage._() : super();
  factory ClientMessage({
    ClientMessage_SendPublicKey? sendPublicKey,
    ClientMessage_LogIn? logIn,
    ClientMessage_AccountRegistration? accountRegistration,
    ClientMessage_AccountRegistrationCode? accountRegistrationCode,
  }) {
    final _result = create();
    if (sendPublicKey != null) {
      _result.sendPublicKey = sendPublicKey;
    }
    if (logIn != null) {
      _result.logIn = logIn;
    }
    if (accountRegistration != null) {
      _result.accountRegistration = accountRegistration;
    }
    if (accountRegistrationCode != null) {
      _result.accountRegistrationCode = accountRegistrationCode;
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

  @$pb.TagNumber(2)
  ClientMessage_LogIn get logIn => $_getN(1);
  @$pb.TagNumber(2)
  set logIn(ClientMessage_LogIn v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLogIn() => $_has(1);
  @$pb.TagNumber(2)
  void clearLogIn() => clearField(2);
  @$pb.TagNumber(2)
  ClientMessage_LogIn ensureLogIn() => $_ensure(1);

  @$pb.TagNumber(3)
  ClientMessage_AccountRegistration get accountRegistration => $_getN(2);
  @$pb.TagNumber(3)
  set accountRegistration(ClientMessage_AccountRegistration v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountRegistration() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountRegistration() => clearField(3);
  @$pb.TagNumber(3)
  ClientMessage_AccountRegistration ensureAccountRegistration() => $_ensure(2);

  @$pb.TagNumber(4)
  ClientMessage_AccountRegistrationCode get accountRegistrationCode => $_getN(3);
  @$pb.TagNumber(4)
  set accountRegistrationCode(ClientMessage_AccountRegistrationCode v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccountRegistrationCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccountRegistrationCode() => clearField(4);
  @$pb.TagNumber(4)
  ClientMessage_AccountRegistrationCode ensureAccountRegistrationCode() => $_ensure(3);
}

