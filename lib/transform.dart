import 'package:cipher/alphabet.dart';

String transformToCipherText(int indexOfInput, int key) {
  while (key > 25) {
    key = key - 26;
  }
  while (key < 0) {
    key = key + 26;
  }
  int algorithm = indexOfInput + key;
  while (algorithm > 25) {
    algorithm = algorithm - 26;
  }
  while (algorithm < 0) {
    algorithm = algorithm + 26;
  }

  String cipherText = alphabet.elementAt(algorithm);
  print('alphabet at value: $cipherText');

  return cipherText;
}

String transformToPlainText(int indexOfInput, int key) {
  while (key > 25) {
    key = key - 26;
  }
  while (key < 0) {
    key = key + 26;
  }

  int algorithm = indexOfInput - key;
  while (algorithm > 25) {
    algorithm = algorithm - 26;
  }
  while (algorithm < 0) {
    algorithm = algorithm + 26;
  }

  String cipherText = alphabet.elementAt(algorithm);
  print('alphabet at value: $cipherText');

  return cipherText;
}
