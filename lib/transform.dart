import 'package:cipher/alphabet.dart';

String transformToCipherText(int indexOfInput, int key) {
  int algorithm = indexOfInput + key;
  if (algorithm > 25) {
    algorithm = algorithm - 25;
  }
  String cipherText = alphabet.elementAt(algorithm);

  return cipherText;
}

String transformToPlainText(int indexOfInput, int key) {
  int algorithm = indexOfInput - key;
  if (algorithm < 0) {
    algorithm = algorithm + 25;
  }
  String cipherText = alphabet.elementAt(algorithm);

  return cipherText;
}
