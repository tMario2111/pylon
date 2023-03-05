import 'dart:typed_data';
import 'dart:math';

import 'package:pointycastle/api.dart';
import 'package:pointycastle/asymmetric/oaep.dart' as pc;
import 'package:pointycastle/asymmetric/rsa.dart' as pc;
import 'package:pointycastle/digests/sha256.dart' as pc;
import 'package:pointycastle/pointycastle.dart' as pc;
import 'package:pointycastle/signers/rsa_signer.dart' as pc;

import 'package:archive/archive.dart';

import 'package:pylon/proto/clientmessage.pb.dart';
import 'crypto_util.dart';
import 'consts.dart';

Uint8List? unprocessServerMessage(
  Uint8List aesKey,
  Uint8List aesIv,
  Uint8List rawSignature,
  Uint8List content,
  pc.RSAPrivateKey clientPrivateKey,
  pc.PublicKey serverPublicKey,
) {
  final rsaDecrypter = pc.OAEPEncoding.withSHA256(pc.RSAEngine())
    ..init(false, pc.PrivateKeyParameter<pc.RSAPrivateKey>(clientPrivateKey));
  final decryptedKey = rsaProcessInBlocks(rsaDecrypter, aesKey);
  final decryptedIv = rsaProcessInBlocks(rsaDecrypter, aesIv);

  final aesDecrypter = pc.PaddedBlockCipher("AES/CBC/PKCS7")
    ..init(
      false,
      pc.PaddedBlockCipherParameters(
        pc.ParametersWithIV(pc.KeyParameter(decryptedKey), decryptedIv),
        null,
      ),
    );
  var output = aesDecrypter.process(content);

  final signature = pc.RSASignature(rawSignature);
  final verifier = pc.RSASigner(pc.SHA256Digest(), '0609608648016503040201')
    ..init(false, pc.PublicKeyParameter<pc.RSAPublicKey>(serverPublicKey));

  // Decompress
  output = Uint8List.fromList(const ZLibDecoder().decodeBytes(output));

  try {
    verifier.verifySignature(output, signature);
  } on ArgumentError {
    return null;
  }

  return output;
}

List<int> processClientMessage(
  ClientMessage message,
  pc.RSAPrivateKey clientPrivateKey,
  pc.PublicKey serverPublicKey,
) {
  final random = Random.secure();

  var serialized = message.writeToBuffer();

  final signer = pc.RSASigner(pc.SHA256Digest(), '0609608648016503040201')
    ..init(true, pc.PrivateKeyParameter<pc.RSAPrivateKey>(clientPrivateKey));
  final signature = signer.generateSignature(serialized);

  // Compress
  serialized = Uint8List.fromList(const ZLibEncoder().encode(serialized));

  var key = Uint8List(aesKeyLength);
  for (int i = 0; i < key.length; i++) {
    key[i] = random.nextInt(256);
  }

  var iv = Uint8List(aesBlockSize);
  for (int i = 0; i < iv.length; i++) {
    iv[i] = random.nextInt(256);
  }

  final aesEncrypter = pc.PaddedBlockCipher("AES/CBC/PKCS7")
    ..init(
      true,
      pc.PaddedBlockCipherParameters(
        pc.ParametersWithIV(pc.KeyParameter(key), iv),
        null,
      ),
    );
  final ciphertext = aesEncrypter.process(serialized);

  final rsaEncrypter = pc.OAEPEncoding.withSHA256(pc.RSAEngine())
    ..init(true, pc.PublicKeyParameter<pc.RSAPublicKey>(serverPublicKey));
  key = rsaProcessInBlocks(rsaEncrypter, key);
  iv = rsaProcessInBlocks(rsaEncrypter, iv);

  final cipherLen = ByteData(4);
  cipherLen.setUint32(0, ciphertext.length, Endian.little);

  return key +
      iv +
      signature.bytes +
      cipherLen.buffer.asUint8List() +
      ciphertext;
}
