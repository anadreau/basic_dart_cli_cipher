import 'dart:io';

import 'package:cipher/decrypt.dart';

void main(List<String> arguments) {
  stdout.write('************\n');
  stdout.write('Input key: ');
  var key = int.parse(stdin.readLineSync().toString());
  stdout.write('Decode message:');
  var input = stdin.readLineSync();
  String decodedMessage = decrypt(input!, key);
  stdout.write('Message: $decodedMessage\n');
  stdout.write('************\n');
}
