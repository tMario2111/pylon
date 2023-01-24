import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:pointycastle/pointycastle.dart' as pc;
import 'package:pointycastle/random/fortuna_random.dart' as pc;

import 'package:encrypt/encrypt.dart' as enc;

import 'consts.dart';
import 'packet_processing.dart';
import 'crypto_util.dart';
import '../proto/clientmessage.pb.dart';
import '../proto/servermessage.pb.dart';

enum _MessagePart {
  key,
  iv,
  signature,
  header,
  content,
}

class Connection {
  static final Connection _instance = Connection._internal();

  factory Connection() {
    return _instance;
  }

  Connection._internal() {
    _init();
  }

  late final Socket _socket;

  final _random = Random.secure();

  final _controller = StreamController<List<int>>();

  late final pc.RSAPrivateKey _privateKey;
  late final pc.RSAPublicKey _publicKey;
  late final pc.RSAPublicKey _serverPublicKey;

  var _data = <int>[];
  var _messagePart = _MessagePart.key;
  var _bytesToRead = rsaCipherLength;

  var _aesKey = Uint8List(rsaCipherLength);
  var _aesIv = Uint8List(rsaCipherLength);
  var _signature = Uint8List(rsaCipherLength);

  var _connected = false;

  bool isConnected() {
    return _connected;
  }

  Future<void> _init() async {
    _generateKeys();

    _socket = await Socket.connect('localhost', 8888);

    _socket.add(
      processClientMessage(
        ClientMessage(
          sendPublicKey: ClientMessage_SendPublicKey(
            keyPem: encodePublicKeyToPemPKCS1(_publicKey),
          ),
        ),
        _privateKey,
        _serverPublicKey,
      ),
    );

    _socket.listen(_read);

    _controller.stream.listen(_processIncomingMessages);
  }

  void _generateKeys() {
    final fortunaRandom = pc.SecureRandom('Fortuna');
    fortunaRandom.seed(pc.KeyParameter(
        Uint8List.fromList(List.generate(32, (_) => _random.nextInt(256)))));

    final keyGenerator = pc.KeyGenerator('RSA');
    keyGenerator.init(
      pc.ParametersWithRandom(
          pc.RSAKeyGeneratorParameters(
              BigInt.parse('65537'), rsaBitStrength, rsaCertainityFactor),
          fortunaRandom),
    );
    final keyPair = keyGenerator.generateKeyPair();
    _publicKey = keyPair.publicKey as pc.RSAPublicKey;
    _privateKey = keyPair.privateKey as pc.RSAPrivateKey;

    _serverPublicKey =
        enc.RSAKeyParser().parse(serverRsaPublicKey) as pc.RSAPublicKey;
  }

  void _read(List<int> event) {
    _data += event;
    while (_data.length >= _bytesToRead) {
      int newBytesToRead;

      switch (_messagePart) {
        case _MessagePart.key:
          _aesKey = Uint8List.fromList(_data.sublist(0, _bytesToRead));
          _messagePart = _MessagePart.iv;
          newBytesToRead = rsaCipherLength;
          break;

        case _MessagePart.iv:
          _aesIv = Uint8List.fromList(_data.sublist(0, _bytesToRead));
          _messagePart = _MessagePart.signature;
          newBytesToRead = rsaCipherLength;
          break;

        case _MessagePart.signature:
          _signature = Uint8List.fromList(_data.sublist(0, _bytesToRead));
          _messagePart = _MessagePart.header;
          newBytesToRead = messageHeaderLength;
          break;

        case _MessagePart.header:
          _messagePart = _MessagePart.content;
          newBytesToRead = int.parse(
            utf8.decode(
              _data.sublist(0, messageHeaderLength),
            ),
            radix: messageHeaderBase,
          );
          break;

        case _MessagePart.content:
          final output = unprocessServerMessage(
            _aesKey,
            _aesIv,
            _signature,
            Uint8List.fromList(_data.sublist(0, _bytesToRead)),
            _privateKey,
            _serverPublicKey,
          );

          if (output != null) {
            _controller.add(output);
          }

          _messagePart = _MessagePart.key;
          newBytesToRead = rsaCipherLength;
          break;
      }

      _data = _data.sublist(_bytesToRead);
      _bytesToRead = newBytesToRead;
    }
  }

  void _processIncomingMessages(List<int> event) {
    final message = ServerMessage.fromBuffer(event);
    if (message.hasConfirmKeyExchange()) {
      _connected = true;
    }
  }
}
