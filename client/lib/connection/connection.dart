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
  static late final Socket _socket;

  static final _random = Random.secure();

  static final _controller = StreamController<List<int>>();

  static late final pc.RSAPrivateKey _privateKey;
  static late final pc.RSAPublicKey _publicKey;
  static late final pc.RSAPublicKey _serverPublicKey;

  static var _data = <int>[];
  static var _messagePart = _MessagePart.key;
  static var _bytesToRead = rsaCipherLength;

  static var _aesKey = Uint8List(rsaCipherLength);
  static var _aesIv = Uint8List(rsaCipherLength);
  static var _signature = Uint8List(rsaCipherLength);

  static Future<void> init() async {
    _generateKeys();

    _socket = await Socket.connect('localhost', 8888);

    _socket.add(
      processClientMessage(
        ClientMessage(
          sendPublicKey: ClientMessage_sendPublicKey(
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

  static void _generateKeys() {
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

  static void _read(List<int> event) {
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

  static void _processIncomingMessages(List<int> event) {
    final message = ServerMessage.fromBuffer(event);
    if (message.hasGreetBack()) {
      print(message.ensureGreetBack().content);
      _socket.add(
        processClientMessage(
            ClientMessage(
                greet: ClientMessage_Greet(
              content: "It does work!",
            )),
            _privateKey,
            _serverPublicKey),
      );
    }
  }
}
