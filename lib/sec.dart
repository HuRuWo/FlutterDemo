
import 'dart:convert';

import 'package:common_utils/common_utils.dart';
import 'package:crypto/crypto.dart';

String hmac_encode(String data) {
  var key = utf8.encode('p@ssw0rd123'+data);
  var bytes = utf8.encode(data);
  var hmac_sha256 = Hmac(sha256, key); // HMAC-SHA256
  var digest = hmac_sha256.convert(bytes);
  // 这里其实就是 digest.toString()
  return digest.toString();
}