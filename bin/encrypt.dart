import 'dart:io';

import 'package:cipher/encrypt.dart';

void main(List<String> arguments) {
  stdout.write('************\n');
  stdout.write('Input key: ');
  var key = int.parse(stdin.readLineSync().toString());
  stdout.write('Encrypt message:');
  var input = stdin.readLineSync();
  String cipherText = encrypt(input!, key);
  stdout.write('ciphertext: $cipherText\n');
  stdout.write('************\n');
}
