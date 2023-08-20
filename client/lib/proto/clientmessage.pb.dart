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

class ClientMessage_CreateChat_IdKeyPair extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientMessage.CreateChat.IdKeyPair', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..hasRequiredFields = false
  ;

  ClientMessage_CreateChat_IdKeyPair._() : super();
  factory ClientMessage_CreateChat_IdKeyPair({
    $core.int? id,
    $core.String? key,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory ClientMessage_CreateChat_IdKeyPair.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientMessage_CreateChat_IdKeyPair.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientMessage_CreateChat_IdKeyPair clone() => ClientMessage_CreateChat_IdKeyPair()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientMessage_CreateChat_IdKeyPair copyWith(void Function(ClientMessage_CreateChat_IdKeyPair) updates) => super.copyWith((message) => updates(message as ClientMessage_CreateChat_IdKeyPair)) as ClientMessage_CreateChat_IdKeyPair; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientMessage_CreateChat_IdKeyPair create() => ClientMessage_CreateChat_IdKeyPair._();
  ClientMessage_CreateChat_IdKeyPair createEmptyInstance() => create();
  static $pb.PbList<ClientMessage_CreateChat_IdKeyPair> createRepeated() => $pb.PbList<ClientMessage_CreateChat_IdKeyPair>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage_CreateChat_IdKeyPair getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientMessage_CreateChat_IdKeyPair>(create);
  static ClientMessage_CreateChat_IdKeyPair? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);
}

class ClientMessage_CreateChat extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientMessage.CreateChat', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'selfKey')
    ..pc<ClientMessage_CreateChat_IdKeyPair>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'otherKeys', $pb.PbFieldType.PM, subBuilder: ClientMessage_CreateChat_IdKeyPair.create)
    ..hasRequiredFields = false
  ;

  ClientMessage_CreateChat._() : super();
  factory ClientMessage_CreateChat({
    $core.String? name,
    $core.String? selfKey,
    $core.Iterable<ClientMessage_CreateChat_IdKeyPair>? otherKeys,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (selfKey != null) {
      _result.selfKey = selfKey;
    }
    if (otherKeys != null) {
      _result.otherKeys.addAll(otherKeys);
    }
    return _result;
  }
  factory ClientMessage_CreateChat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientMessage_CreateChat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientMessage_CreateChat clone() => ClientMessage_CreateChat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientMessage_CreateChat copyWith(void Function(ClientMessage_CreateChat) updates) => super.copyWith((message) => updates(message as ClientMessage_CreateChat)) as ClientMessage_CreateChat; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientMessage_CreateChat create() => ClientMessage_CreateChat._();
  ClientMessage_CreateChat createEmptyInstance() => create();
  static $pb.PbList<ClientMessage_CreateChat> createRepeated() => $pb.PbList<ClientMessage_CreateChat>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage_CreateChat getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientMessage_CreateChat>(create);
  static ClientMessage_CreateChat? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get selfKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set selfKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSelfKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearSelfKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<ClientMessage_CreateChat_IdKeyPair> get otherKeys => $_getList(2);
}

class ClientMessage_RequestPublicKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientMessage.RequestPublicKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ClientMessage_RequestPublicKey._() : super();
  factory ClientMessage_RequestPublicKey({
    $core.int? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory ClientMessage_RequestPublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientMessage_RequestPublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientMessage_RequestPublicKey clone() => ClientMessage_RequestPublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientMessage_RequestPublicKey copyWith(void Function(ClientMessage_RequestPublicKey) updates) => super.copyWith((message) => updates(message as ClientMessage_RequestPublicKey)) as ClientMessage_RequestPublicKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientMessage_RequestPublicKey create() => ClientMessage_RequestPublicKey._();
  ClientMessage_RequestPublicKey createEmptyInstance() => create();
  static $pb.PbList<ClientMessage_RequestPublicKey> createRepeated() => $pb.PbList<ClientMessage_RequestPublicKey>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage_RequestPublicKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientMessage_RequestPublicKey>(create);
  static ClientMessage_RequestPublicKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class ClientMessage_RequestUserList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientMessage.RequestUserList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ClientMessage_RequestUserList._() : super();
  factory ClientMessage_RequestUserList() => create();
  factory ClientMessage_RequestUserList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientMessage_RequestUserList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientMessage_RequestUserList clone() => ClientMessage_RequestUserList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientMessage_RequestUserList copyWith(void Function(ClientMessage_RequestUserList) updates) => super.copyWith((message) => updates(message as ClientMessage_RequestUserList)) as ClientMessage_RequestUserList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientMessage_RequestUserList create() => ClientMessage_RequestUserList._();
  ClientMessage_RequestUserList createEmptyInstance() => create();
  static $pb.PbList<ClientMessage_RequestUserList> createRepeated() => $pb.PbList<ClientMessage_RequestUserList>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage_RequestUserList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientMessage_RequestUserList>(create);
  static ClientMessage_RequestUserList? _defaultInstance;
}

class ClientMessage_RequestChatList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientMessage.RequestChatList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ClientMessage_RequestChatList._() : super();
  factory ClientMessage_RequestChatList() => create();
  factory ClientMessage_RequestChatList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientMessage_RequestChatList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientMessage_RequestChatList clone() => ClientMessage_RequestChatList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientMessage_RequestChatList copyWith(void Function(ClientMessage_RequestChatList) updates) => super.copyWith((message) => updates(message as ClientMessage_RequestChatList)) as ClientMessage_RequestChatList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientMessage_RequestChatList create() => ClientMessage_RequestChatList._();
  ClientMessage_RequestChatList createEmptyInstance() => create();
  static $pb.PbList<ClientMessage_RequestChatList> createRepeated() => $pb.PbList<ClientMessage_RequestChatList>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage_RequestChatList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientMessage_RequestChatList>(create);
  static ClientMessage_RequestChatList? _defaultInstance;
}

class ClientMessage_RequestChatSharedKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientMessage.RequestChatSharedKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chatId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ClientMessage_RequestChatSharedKey._() : super();
  factory ClientMessage_RequestChatSharedKey({
    $core.int? chatId,
  }) {
    final _result = create();
    if (chatId != null) {
      _result.chatId = chatId;
    }
    return _result;
  }
  factory ClientMessage_RequestChatSharedKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientMessage_RequestChatSharedKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientMessage_RequestChatSharedKey clone() => ClientMessage_RequestChatSharedKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientMessage_RequestChatSharedKey copyWith(void Function(ClientMessage_RequestChatSharedKey) updates) => super.copyWith((message) => updates(message as ClientMessage_RequestChatSharedKey)) as ClientMessage_RequestChatSharedKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientMessage_RequestChatSharedKey create() => ClientMessage_RequestChatSharedKey._();
  ClientMessage_RequestChatSharedKey createEmptyInstance() => create();
  static $pb.PbList<ClientMessage_RequestChatSharedKey> createRepeated() => $pb.PbList<ClientMessage_RequestChatSharedKey>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage_RequestChatSharedKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientMessage_RequestChatSharedKey>(create);
  static ClientMessage_RequestChatSharedKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get chatId => $_getIZ(0);
  @$pb.TagNumber(1)
  set chatId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChatId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChatId() => clearField(1);
}

class ClientMessage_SendMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientMessage.SendMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chatId', $pb.PbFieldType.OU3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'iv')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ClientMessage_SendMessage._() : super();
  factory ClientMessage_SendMessage({
    $core.int? chatId,
    $core.String? content,
    $core.String? iv,
    $core.String? signature,
    $core.int? type,
  }) {
    final _result = create();
    if (chatId != null) {
      _result.chatId = chatId;
    }
    if (content != null) {
      _result.content = content;
    }
    if (iv != null) {
      _result.iv = iv;
    }
    if (signature != null) {
      _result.signature = signature;
    }
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory ClientMessage_SendMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientMessage_SendMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientMessage_SendMessage clone() => ClientMessage_SendMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientMessage_SendMessage copyWith(void Function(ClientMessage_SendMessage) updates) => super.copyWith((message) => updates(message as ClientMessage_SendMessage)) as ClientMessage_SendMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientMessage_SendMessage create() => ClientMessage_SendMessage._();
  ClientMessage_SendMessage createEmptyInstance() => create();
  static $pb.PbList<ClientMessage_SendMessage> createRepeated() => $pb.PbList<ClientMessage_SendMessage>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage_SendMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientMessage_SendMessage>(create);
  static ClientMessage_SendMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get chatId => $_getIZ(0);
  @$pb.TagNumber(1)
  set chatId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChatId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChatId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get iv => $_getSZ(2);
  @$pb.TagNumber(3)
  set iv($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIv() => $_has(2);
  @$pb.TagNumber(3)
  void clearIv() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get signature => $_getSZ(3);
  @$pb.TagNumber(4)
  set signature($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSignature() => $_has(3);
  @$pb.TagNumber(4)
  void clearSignature() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get type => $_getIZ(4);
  @$pb.TagNumber(5)
  set type($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => clearField(5);
}

class ClientMessage_GetMessages extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientMessage.GetMessages', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chatId', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ClientMessage_GetMessages._() : super();
  factory ClientMessage_GetMessages({
    $core.int? chatId,
    $core.int? count,
  }) {
    final _result = create();
    if (chatId != null) {
      _result.chatId = chatId;
    }
    if (count != null) {
      _result.count = count;
    }
    return _result;
  }
  factory ClientMessage_GetMessages.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientMessage_GetMessages.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientMessage_GetMessages clone() => ClientMessage_GetMessages()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientMessage_GetMessages copyWith(void Function(ClientMessage_GetMessages) updates) => super.copyWith((message) => updates(message as ClientMessage_GetMessages)) as ClientMessage_GetMessages; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientMessage_GetMessages create() => ClientMessage_GetMessages._();
  ClientMessage_GetMessages createEmptyInstance() => create();
  static $pb.PbList<ClientMessage_GetMessages> createRepeated() => $pb.PbList<ClientMessage_GetMessages>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage_GetMessages getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientMessage_GetMessages>(create);
  static ClientMessage_GetMessages? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get chatId => $_getIZ(0);
  @$pb.TagNumber(1)
  set chatId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChatId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChatId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

enum ClientMessage_Variant {
  sendPublicKey, 
  logIn, 
  accountRegistration, 
  accountRegistrationCode, 
  requestUserList, 
  createChat, 
  requestPublicKey, 
  requestChatList, 
  requestChatSharedKey, 
  sendMessage, 
  getMessages, 
  notSet
}

class ClientMessage extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ClientMessage_Variant> _ClientMessage_VariantByTag = {
    1 : ClientMessage_Variant.sendPublicKey,
    2 : ClientMessage_Variant.logIn,
    3 : ClientMessage_Variant.accountRegistration,
    4 : ClientMessage_Variant.accountRegistrationCode,
    5 : ClientMessage_Variant.requestUserList,
    6 : ClientMessage_Variant.createChat,
    7 : ClientMessage_Variant.requestPublicKey,
    8 : ClientMessage_Variant.requestChatList,
    9 : ClientMessage_Variant.requestChatSharedKey,
    10 : ClientMessage_Variant.sendMessage,
    11 : ClientMessage_Variant.getMessages,
    0 : ClientMessage_Variant.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11])
    ..aOM<ClientMessage_SendPublicKey>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sendPublicKey', subBuilder: ClientMessage_SendPublicKey.create)
    ..aOM<ClientMessage_LogIn>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'logIn', subBuilder: ClientMessage_LogIn.create)
    ..aOM<ClientMessage_AccountRegistration>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountRegistration', subBuilder: ClientMessage_AccountRegistration.create)
    ..aOM<ClientMessage_AccountRegistrationCode>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountRegistrationCode', subBuilder: ClientMessage_AccountRegistrationCode.create)
    ..aOM<ClientMessage_RequestUserList>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestUserList', subBuilder: ClientMessage_RequestUserList.create)
    ..aOM<ClientMessage_CreateChat>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createChat', subBuilder: ClientMessage_CreateChat.create)
    ..aOM<ClientMessage_RequestPublicKey>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestPublicKey', subBuilder: ClientMessage_RequestPublicKey.create)
    ..aOM<ClientMessage_RequestChatList>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestChatList', subBuilder: ClientMessage_RequestChatList.create)
    ..aOM<ClientMessage_RequestChatSharedKey>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestChatSharedKey', subBuilder: ClientMessage_RequestChatSharedKey.create)
    ..aOM<ClientMessage_SendMessage>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sendMessage', subBuilder: ClientMessage_SendMessage.create)
    ..aOM<ClientMessage_GetMessages>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getMessages', subBuilder: ClientMessage_GetMessages.create)
    ..hasRequiredFields = false
  ;

  ClientMessage._() : super();
  factory ClientMessage({
    ClientMessage_SendPublicKey? sendPublicKey,
    ClientMessage_LogIn? logIn,
    ClientMessage_AccountRegistration? accountRegistration,
    ClientMessage_AccountRegistrationCode? accountRegistrationCode,
    ClientMessage_RequestUserList? requestUserList,
    ClientMessage_CreateChat? createChat,
    ClientMessage_RequestPublicKey? requestPublicKey,
    ClientMessage_RequestChatList? requestChatList,
    ClientMessage_RequestChatSharedKey? requestChatSharedKey,
    ClientMessage_SendMessage? sendMessage,
    ClientMessage_GetMessages? getMessages,
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
    if (requestUserList != null) {
      _result.requestUserList = requestUserList;
    }
    if (createChat != null) {
      _result.createChat = createChat;
    }
    if (requestPublicKey != null) {
      _result.requestPublicKey = requestPublicKey;
    }
    if (requestChatList != null) {
      _result.requestChatList = requestChatList;
    }
    if (requestChatSharedKey != null) {
      _result.requestChatSharedKey = requestChatSharedKey;
    }
    if (sendMessage != null) {
      _result.sendMessage = sendMessage;
    }
    if (getMessages != null) {
      _result.getMessages = getMessages;
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

  @$pb.TagNumber(5)
  ClientMessage_RequestUserList get requestUserList => $_getN(4);
  @$pb.TagNumber(5)
  set requestUserList(ClientMessage_RequestUserList v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRequestUserList() => $_has(4);
  @$pb.TagNumber(5)
  void clearRequestUserList() => clearField(5);
  @$pb.TagNumber(5)
  ClientMessage_RequestUserList ensureRequestUserList() => $_ensure(4);

  @$pb.TagNumber(6)
  ClientMessage_CreateChat get createChat => $_getN(5);
  @$pb.TagNumber(6)
  set createChat(ClientMessage_CreateChat v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreateChat() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreateChat() => clearField(6);
  @$pb.TagNumber(6)
  ClientMessage_CreateChat ensureCreateChat() => $_ensure(5);

  @$pb.TagNumber(7)
  ClientMessage_RequestPublicKey get requestPublicKey => $_getN(6);
  @$pb.TagNumber(7)
  set requestPublicKey(ClientMessage_RequestPublicKey v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasRequestPublicKey() => $_has(6);
  @$pb.TagNumber(7)
  void clearRequestPublicKey() => clearField(7);
  @$pb.TagNumber(7)
  ClientMessage_RequestPublicKey ensureRequestPublicKey() => $_ensure(6);

  @$pb.TagNumber(8)
  ClientMessage_RequestChatList get requestChatList => $_getN(7);
  @$pb.TagNumber(8)
  set requestChatList(ClientMessage_RequestChatList v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasRequestChatList() => $_has(7);
  @$pb.TagNumber(8)
  void clearRequestChatList() => clearField(8);
  @$pb.TagNumber(8)
  ClientMessage_RequestChatList ensureRequestChatList() => $_ensure(7);

  @$pb.TagNumber(9)
  ClientMessage_RequestChatSharedKey get requestChatSharedKey => $_getN(8);
  @$pb.TagNumber(9)
  set requestChatSharedKey(ClientMessage_RequestChatSharedKey v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasRequestChatSharedKey() => $_has(8);
  @$pb.TagNumber(9)
  void clearRequestChatSharedKey() => clearField(9);
  @$pb.TagNumber(9)
  ClientMessage_RequestChatSharedKey ensureRequestChatSharedKey() => $_ensure(8);

  @$pb.TagNumber(10)
  ClientMessage_SendMessage get sendMessage => $_getN(9);
  @$pb.TagNumber(10)
  set sendMessage(ClientMessage_SendMessage v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasSendMessage() => $_has(9);
  @$pb.TagNumber(10)
  void clearSendMessage() => clearField(10);
  @$pb.TagNumber(10)
  ClientMessage_SendMessage ensureSendMessage() => $_ensure(9);

  @$pb.TagNumber(11)
  ClientMessage_GetMessages get getMessages => $_getN(10);
  @$pb.TagNumber(11)
  set getMessages(ClientMessage_GetMessages v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasGetMessages() => $_has(10);
  @$pb.TagNumber(11)
  void clearGetMessages() => clearField(11);
  @$pb.TagNumber(11)
  ClientMessage_GetMessages ensureGetMessages() => $_ensure(10);
}

