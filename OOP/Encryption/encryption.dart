import 'dart:convert';

class Encryption {

  static String encoding(String data) {
    String encoded = base64Url.encode(utf8.encode(data));
    return encoded;
  }

  static String decoding(String data) {
    String decoded = utf8.decode(base64Url.decode(data));
    return decoded;
  }

}