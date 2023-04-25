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
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'successful')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ServerMessage_ConfirmLogIn._() : super();
  factory ServerMessage_ConfirmLogIn({
    $core.bool? successful,
    $core.int? id,
  }) {
    final _result = create();
    if (successful != null) {
      _result.successful = successful;
    }
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
  $core.bool get successful => $_getBF(0);
  @$pb.TagNumber(1)
  set successful($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccessful() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccessful() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get id => $_getIZ(1);
  @$pb.TagNumber(2)
  set id($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
}

class ServerMessage_AccountRegistrationResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServerMessage.AccountRegistrationResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'successful')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emailError')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'usernameError')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passwordError')
    ..hasRequiredFields = false
  ;

  ServerMessage_AccountRegistrationResult._() : super();
  factory ServerMessage_AccountRegistrationResult({
    $core.bool? successful,
    $core.String? emailError,
    $core.String? usernameError,
    $core.String? passwordError,
  }) {
    final _result = create();
    if (successful != null) {
      _result.successful = successful;
    }
    if (emailError != null) {
      _result.emailError = emailError;
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
  $core.String get emailError => $_getSZ(1);
  @$pb.TagNumber(2)
  set emailError($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmailError() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmailError() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get usernameError => $_getSZ(2);
  @$pb.TagNumber(3)
  set usernameError($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUsernameError() => $_has(2);
  @$pb.TagNumber(3)
  void clearUsernameError() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get passwordError => $_getSZ(3);
  @$pb.TagNumber(4)
  set passwordError($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPasswordError() => $_has(3);
  @$pb.TagNumber(4)
  void clearPasswordError() => clearField(4);
}

class ServerMessage_AccountRegistrationCodeResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServerMessage.AccountRegistrationCodeResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'successful')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'criticalError', protoName: 'criticalError')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..hasRequiredFields = false
  ;

  ServerMessage_AccountRegistrationCodeResult._() : super();
  factory ServerMessage_AccountRegistrationCodeResult({
    $core.bool? successful,
    $core.bool? criticalError,
    $core.String? error,
  }) {
    final _result = create();
    if (successful != null) {
      _result.successful = successful;
    }
    if (criticalError != null) {
      _result.criticalError = criticalError;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory ServerMessage_AccountRegistrationCodeResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerMessage_AccountRegistrationCodeResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServerMessage_AccountRegistrationCodeResult clone() => ServerMessage_AccountRegistrationCodeResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServerMessage_AccountRegistrationCodeResult copyWith(void Function(ServerMessage_AccountRegistrationCodeResult) updates) => super.copyWith((message) => updates(message as ServerMessage_AccountRegistrationCodeResult)) as ServerMessage_AccountRegistrationCodeResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServerMessage_AccountRegistrationCodeResult create() => ServerMessage_AccountRegistrationCodeResult._();
  ServerMessage_AccountRegistrationCodeResult createEmptyInstance() => create();
  static $pb.PbList<ServerMessage_AccountRegistrationCodeResult> createRepeated() => $pb.PbList<ServerMessage_AccountRegistrationCodeResult>();
  @$core.pragma('dart2js:noInline')
  static ServerMessage_AccountRegistrationCodeResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerMessage_AccountRegistrationCodeResult>(create);
  static ServerMessage_AccountRegistrationCodeResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get successful => $_getBF(0);
  @$pb.TagNumber(1)
  set successful($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccessful() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccessful() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get criticalError => $_getBF(1);
  @$pb.TagNumber(2)
  set criticalError($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCriticalError() => $_has(1);
  @$pb.TagNumber(2)
  void clearCriticalError() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get error => $_getSZ(2);
  @$pb.TagNumber(3)
  set error($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);
}

class ServerMessage_SendUserList_User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServerMessage.SendUserList.User', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ServerMessage_SendUserList_User._() : super();
  factory ServerMessage_SendUserList_User({
    $core.String? username,
    $core.int? id,
  }) {
    final _result = create();
    if (username != null) {
      _result.username = username;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory ServerMessage_SendUserList_User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerMessage_SendUserList_User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServerMessage_SendUserList_User clone() => ServerMessage_SendUserList_User()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServerMessage_SendUserList_User copyWith(void Function(ServerMessage_SendUserList_User) updates) => super.copyWith((message) => updates(message as ServerMessage_SendUserList_User)) as ServerMessage_SendUserList_User; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServerMessage_SendUserList_User create() => ServerMessage_SendUserList_User._();
  ServerMessage_SendUserList_User createEmptyInstance() => create();
  static $pb.PbList<ServerMessage_SendUserList_User> createRepeated() => $pb.PbList<ServerMessage_SendUserList_User>();
  @$core.pragma('dart2js:noInline')
  static ServerMessage_SendUserList_User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerMessage_SendUserList_User>(create);
  static ServerMessage_SendUserList_User? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get id => $_getIZ(1);
  @$pb.TagNumber(2)
  set id($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
}

class ServerMessage_SendUserList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServerMessage.SendUserList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..pc<ServerMessage_SendUserList_User>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'users', $pb.PbFieldType.PM, subBuilder: ServerMessage_SendUserList_User.create)
    ..hasRequiredFields = false
  ;

  ServerMessage_SendUserList._() : super();
  factory ServerMessage_SendUserList({
    $core.Iterable<ServerMessage_SendUserList_User>? users,
  }) {
    final _result = create();
    if (users != null) {
      _result.users.addAll(users);
    }
    return _result;
  }
  factory ServerMessage_SendUserList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerMessage_SendUserList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServerMessage_SendUserList clone() => ServerMessage_SendUserList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServerMessage_SendUserList copyWith(void Function(ServerMessage_SendUserList) updates) => super.copyWith((message) => updates(message as ServerMessage_SendUserList)) as ServerMessage_SendUserList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServerMessage_SendUserList create() => ServerMessage_SendUserList._();
  ServerMessage_SendUserList createEmptyInstance() => create();
  static $pb.PbList<ServerMessage_SendUserList> createRepeated() => $pb.PbList<ServerMessage_SendUserList>();
  @$core.pragma('dart2js:noInline')
  static ServerMessage_SendUserList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerMessage_SendUserList>(create);
  static ServerMessage_SendUserList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ServerMessage_SendUserList_User> get users => $_getList(0);
}

enum ServerMessage_Variant {
  confirmKeyExchange, 
  confirmLogIn, 
  accountRegistrationResult, 
  accountRegistrationCodeResult, 
  sendUserList, 
  notSet
}

class ServerMessage extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ServerMessage_Variant> _ServerMessage_VariantByTag = {
    1 : ServerMessage_Variant.confirmKeyExchange,
    2 : ServerMessage_Variant.confirmLogIn,
    3 : ServerMessage_Variant.accountRegistrationResult,
    4 : ServerMessage_Variant.accountRegistrationCodeResult,
    5 : ServerMessage_Variant.sendUserList,
    0 : ServerMessage_Variant.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServerMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5])
    ..aOM<ServerMessage_ConfirmKeyExchange>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'confirmKeyExchange', subBuilder: ServerMessage_ConfirmKeyExchange.create)
    ..aOM<ServerMessage_ConfirmLogIn>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'confirmLogIn', subBuilder: ServerMessage_ConfirmLogIn.create)
    ..aOM<ServerMessage_AccountRegistrationResult>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountRegistrationResult', subBuilder: ServerMessage_AccountRegistrationResult.create)
    ..aOM<ServerMessage_AccountRegistrationCodeResult>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountRegistrationCodeResult', subBuilder: ServerMessage_AccountRegistrationCodeResult.create)
    ..aOM<ServerMessage_SendUserList>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sendUserList', subBuilder: ServerMessage_SendUserList.create)
    ..hasRequiredFields = false
  ;

  ServerMessage._() : super();
  factory ServerMessage({
    ServerMessage_ConfirmKeyExchange? confirmKeyExchange,
    ServerMessage_ConfirmLogIn? confirmLogIn,
    ServerMessage_AccountRegistrationResult? accountRegistrationResult,
    ServerMessage_AccountRegistrationCodeResult? accountRegistrationCodeResult,
    ServerMessage_SendUserList? sendUserList,
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
    if (accountRegistrationCodeResult != null) {
      _result.accountRegistrationCodeResult = accountRegistrationCodeResult;
    }
    if (sendUserList != null) {
      _result.sendUserList = sendUserList;
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

  @$pb.TagNumber(4)
  ServerMessage_AccountRegistrationCodeResult get accountRegistrationCodeResult => $_getN(3);
  @$pb.TagNumber(4)
  set accountRegistrationCodeResult(ServerMessage_AccountRegistrationCodeResult v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccountRegistrationCodeResult() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccountRegistrationCodeResult() => clearField(4);
  @$pb.TagNumber(4)
  ServerMessage_AccountRegistrationCodeResult ensureAccountRegistrationCodeResult() => $_ensure(3);

  @$pb.TagNumber(5)
  ServerMessage_SendUserList get sendUserList => $_getN(4);
  @$pb.TagNumber(5)
  set sendUserList(ServerMessage_SendUserList v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSendUserList() => $_has(4);
  @$pb.TagNumber(5)
  void clearSendUserList() => clearField(5);
  @$pb.TagNumber(5)
  ServerMessage_SendUserList ensureSendUserList() => $_ensure(4);
}

