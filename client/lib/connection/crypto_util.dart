import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:pointycastle/pointycastle.dart' as pc;
import 'package:pointycastle/random/fortuna_random.dart' as pc;

import 'consts.dart';

Uint8List getLenghtAsBase16(Uint8List str) {
  var len = str.length.toRadixString(16);
  while (len.length < 4) {
    len = "0$len";
  }
  return utf8.encode(len) as Uint8List;
}

Uint8List rsaProcessInBlocks(pc.AsymmetricBlockCipher engine, Uint8List input) {
  final numBlocks = input.length ~/ engine.inputBlockSize +
      ((input.length % engine.inputBlockSize != 0) ? 1 : 0);

  final output = Uint8List(numBlocks * engine.outputBlockSize);

  var inputOffset = 0;
  var outputOffset = 0;
  while (inputOffset < input.length) {
    final chunkSize = (inputOffset + engine.inputBlockSize <= input.length)
        ? engine.inputBlockSize
        : input.length - inputOffset;

    outputOffset += engine.processBlock(
        input, inputOffset, chunkSize, output, outputOffset);

    inputOffset += chunkSize;
  }

  return (output.length == outputOffset)
      ? output
      : output.sublist(0, outputOffset);
}

String encodePublicKeyToPemPKCS1(pc.RSAPublicKey key) {
  final topLevel = pc.ASN1Sequence();

  topLevel.add(pc.ASN1Integer(key.modulus));
  topLevel.add(pc.ASN1Integer(key.exponent));

  topLevel.encode();
  final dataBase64 = base64.encode(topLevel.encodedBytes!);

  return """-----BEGIN RSA PUBLIC KEY-----\r\n$dataBase64\r\n-----END RSA PUBLIC KEY-----""";
}

String encodePrivateKeyToPemPKCS1(pc.RSAPrivateKey key) {
  final topLevel = pc.ASN1Sequence();

  final version = pc.ASN1Integer(BigInt.from(0));
  final modulus = pc.ASN1Integer(key.n);
  final publicExponent = pc.ASN1Integer(key.exponent);
  final privateExponent = pc.ASN1Integer(key.privateExponent);
  final p = pc.ASN1Integer(key.p);
  final q = pc.ASN1Integer(key.q);
  final dP = key.privateExponent! % (key.p! - BigInt.from(1));
  final exp1 = pc.ASN1Integer(dP);
  final dQ = key.privateExponent! % (key.q! - BigInt.from(1));
  final exp2 = pc.ASN1Integer(dQ);
  final iQ = key.q!.modInverse(key.p!);
  final co = pc.ASN1Integer(iQ);

  topLevel.add(version);
  topLevel.add(modulus);
  topLevel.add(publicExponent);
  topLevel.add(privateExponent);
  topLevel.add(p);
  topLevel.add(q);
  topLevel.add(exp1);
  topLevel.add(exp2);
  topLevel.add(co);

  topLevel.encode();

  final dataBase64 = base64.encode(topLevel.encodedBytes!);
  return """-----BEGIN RSA PRIVATE KEY-----\r\n$dataBase64\r\n-----END RSA PRIVATE KEY-----""";
}

pc.AsymmetricKeyPair<pc.PublicKey, pc.PrivateKey> generateKeysFromPassword(
    String password) {
  // Hope that dart's hashCode is alright
  final random = Random(password.hashCode);

  final fortunaRandom = pc.SecureRandom('Fortuna');
  fortunaRandom.seed(pc.KeyParameter(
      Uint8List.fromList(List.generate(32, (_) => random.nextInt(256)))));

  final keyGenerator = pc.KeyGenerator('RSA')
    ..init(
      pc.ParametersWithRandom(
          pc.RSAKeyGeneratorParameters(
              BigInt.parse('65537'), rsaBitStrength, rsaCertainityFactor),
          fortunaRandom),
    );

  return keyGenerator.generateKeyPair();
}
