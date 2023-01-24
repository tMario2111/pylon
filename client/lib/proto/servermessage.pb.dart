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

enum ServerMessage_Variant {
  confirmKeyExchange, 
  notSet
}

class ServerMessage extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ServerMessage_Variant> _ServerMessage_VariantByTag = {
    1 : ServerMessage_Variant.confirmKeyExchange,
    0 : ServerMessage_Variant.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServerMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'main'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<ServerMessage_ConfirmKeyExchange>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'confirmKeyExchange', subBuilder: ServerMessage_ConfirmKeyExchange.create)
    ..hasRequiredFields = false
  ;

  ServerMessage._() : super();
  factory ServerMessage({
    ServerMessage_ConfirmKeyExchange? confirmKeyExchange,
  }) {
    final _result = create();
    if (confirmKeyExchange != null) {
      _result.confirmKeyExchange = confirmKeyExchange;
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
}

