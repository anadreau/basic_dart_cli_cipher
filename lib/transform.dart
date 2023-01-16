import 'package:cipher/alphabet.dart';

String transformToCipherText(int indexOfInput, int key) {
  int algorithm = indexOfInput + key;
  while (algorithm > alphabet.length - 1) {
    algorithm = algorithm - alphabet.length;
  }
  while (algorithm < 0) {
    algorithm = algorithm + alphabet.length;
  }

  String cipherText = alphabet.elementAt(algorithm);
  print('alphabet at value: $cipherText');

  return cipherText;
}

String transformToPlainText(int indexOfInput, int key) {
  int algorithm = indexOfInput - key;
  while (algorithm > alphabet.length - 1) {
    algorithm = algorithm - alphabet.length;
  }
  while (algorithm < 0) {
    algorithm = algorithm + alphabet.length;
  }

  String cipherText = alphabet.elementAt(algorithm);
  print('alphabet at value: $cipherText');

  return cipherText;
}
