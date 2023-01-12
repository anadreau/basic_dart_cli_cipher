import 'dart:io';

import 'package:cipher/decode.dart';

void main(List<String> arguments) {
  stdout.write('Input key: ');
  var key = int.parse(stdin.readLineSync().toString());
  stdout.write('Decode message:');
  var input = stdin.readLineSync();
  String decodedMessage = decode(input!, key);
  stdout.write('Message: $decodedMessage ');
}
