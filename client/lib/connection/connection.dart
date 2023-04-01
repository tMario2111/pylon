import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
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

/*

DISCLAIMER

Honestly, this whole file is a complete mess. I hate Flutter isolates and higher
level languages. There are like 4 controllers doing different things and also
some listener functions that just seem to work. Also, flutter isolates don't
work with web, so something has to be done. This file really needs to be 
rewritten but I don't have the mental capacity to do so right now. I don't know
if I will make this project public sometime, but if someone sees this, please
fix this code.
Sincerely, tMario2111



TODO: Fix web
TODO: Rewrite the whole file in a sane way
*/

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

  late final pc.RSAPrivateKey _privateKey;
  late final pc.RSAPublicKey _publicKey;
  late final pc.RSAPublicKey _serverPublicKey;

  final receivePort = ReceivePort();
  late final SendPort sendPort;

  void Function(dynamic)? receiveListener;

  Connection._internal() {
    _init();
  }

  void _init() async {
    _generateKeys();

    receivePort.listen((dynamic message) {
      if (receiveListener != null) {
        receiveListener!(message);
      }
    });

    await Isolate.spawn(
      _isolate,
      [
        receivePort.sendPort,
        _privateKey,
        _publicKey,
        _serverPublicKey,
      ],
    );
  }

  void _generateKeys() {
    final random = Random.secure();

    final fortunaRandom = pc.SecureRandom('Fortuna');
    fortunaRandom.seed(pc.KeyParameter(
        Uint8List.fromList(List.generate(32, (_) => random.nextInt(256)))));

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
}

void _isolate(List<dynamic> args) async {
  SendPort responsePort = args[0];
  pc.RSAPrivateKey privateKey = args[1];
  pc.RSAPublicKey publicKey = args[2];
  pc.RSAPublicKey serverPublicKey = args[3];

  final receivePort = ReceivePort();
  responsePort.send(receivePort.sendPort);

  var ok = false;

  late Socket socket;
  while (!ok) {
    ok = true;
    try {
      socket = await Socket.connect('localhost', 8888);
    } catch (e) {
      print(e);
      ok = false;
      await Future.delayed(const Duration(seconds: 1));
    }
  }

  socket.add(
    processClientMessage(
      ClientMessage(
        sendPublicKey: ClientMessage_SendPublicKey(
          keyPem: encodePublicKeyToPemPKCS1(publicKey),
        ),
      ),
      privateKey,
      serverPublicKey,
    ),
  );

  final controller = StreamController<List<int>>();

  final keyChannel =
      StreamController<pc.AsymmetricKeyPair<pc.PublicKey, pc.PrivateKey>>();

  _read(socket, controller, privateKey, serverPublicKey, keyChannel);

  _processIncomingMessages(responsePort, controller);

  receivePort.listen((message) {
    if (message is ClientMessage) {
      socket.add(processClientMessage(message, privateKey, serverPublicKey));
    } else if (message is pc.AsymmetricKeyPair<pc.PublicKey, pc.PrivateKey>) {
      privateKey = message.privateKey as pc.RSAPrivateKey;
      publicKey = message.publicKey as pc.RSAPublicKey;
      keyChannel.add(message);
    }
  });
}

void _read(
    Socket socket,
    StreamController<List<int>> controller,
    pc.RSAPrivateKey privateKey,
    pc.RSAPublicKey serverPublicKey,
    StreamController<pc.AsymmetricKeyPair<pc.PublicKey, pc.PrivateKey>>
        keyChannel) {
  keyChannel.stream.listen((event) {
    privateKey = event.privateKey as pc.RSAPrivateKey;
  });

  var data = <int>[];
  var messagePart = _MessagePart.key;
  var bytesToRead = rsaCipherLength;

  var aesKey = Uint8List(rsaCipherLength);
  var aesIv = Uint8List(rsaCipherLength);
  var signature = Uint8List(rsaCipherLength);

  socket.listen((List<int> event) {
    data += event;
    while (data.length >= bytesToRead) {
      int newBytesToRead;

      switch (messagePart) {
        case _MessagePart.key:
          aesKey = Uint8List.fromList(data.sublist(0, bytesToRead));
          messagePart = _MessagePart.iv;
          newBytesToRead = rsaCipherLength;
          break;

        case _MessagePart.iv:
          aesIv = Uint8List.fromList(data.sublist(0, bytesToRead));
          messagePart = _MessagePart.signature;
          newBytesToRead = rsaCipherLength;
          break;

        case _MessagePart.signature:
          signature = Uint8List.fromList(data.sublist(0, bytesToRead));
          messagePart = _MessagePart.header;
          newBytesToRead = messageHeaderLength;
          break;

        case _MessagePart.header:
          messagePart = _MessagePart.content;
          final blob = ByteData.sublistView(
              Uint8List.fromList(data.sublist(0, messageHeaderLength)));
          newBytesToRead = blob.getUint32(0, Endian.little);
          break;

        case _MessagePart.content:
          final output = unprocessServerMessage(
            aesKey,
            aesIv,
            signature,
            Uint8List.fromList(data.sublist(0, bytesToRead)),
            privateKey,
            serverPublicKey,
          );

          if (output != null) {
            controller.add(output);
          }

          messagePart = _MessagePart.key;
          newBytesToRead = rsaCipherLength;
          break;
      }

      data = data.sublist(bytesToRead);
      bytesToRead = newBytesToRead;
    }
  });
}

class IsConnected {}

void _processIncomingMessages(
    SendPort responsePort, StreamController<List<int>> controller) {
  controller.stream.listen((List<int> event) {
    final message = ServerMessage.fromBuffer(event);
    if (message.hasConfirmKeyExchange()) {
      responsePort.send(IsConnected());
    }

    responsePort.send(message);
  });
}
