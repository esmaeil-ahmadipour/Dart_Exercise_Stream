import 'dart:convert';

import 'encryption.dart';

void main(){
String _alphabet = "ABCD";
String _numbers = "1234";

String encryptedData = Encryption.encoding(_alphabet);
print("Alphabet's Encryption: $encryptedData");

String decryptedData = Encryption.decoding(encryptedData);
print("Alphabet's Decryption: $decryptedData");


encryptedData = Encryption.encoding(_numbers);
print("Number's Encryption: $encryptedData");

decryptedData = Encryption.decoding(encryptedData);
print("Number's Decryption: $decryptedData");

}