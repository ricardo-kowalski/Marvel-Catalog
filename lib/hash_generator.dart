import 'dart:convert';

import 'package:crypto/crypto.dart';

class HashGenerator {
  HashGenerator._();

  factory HashGenerator() {
    return HashGenerator._();
  }

  String get(
      {required String publicKey,
      required String privateKey,
      required String convertedTimestamp}) {
    final input = '$convertedTimestamp$privateKey$publicKey';
    final data = utf8.encode(input);
    final hashValue = md5.convert(data);
    return hashValue.toString();
  }
}
