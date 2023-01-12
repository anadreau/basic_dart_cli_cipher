import 'package:cipher/alphabet.dart';
import 'package:cipher/transform.dart';

String encrypt(String entry, int key) {
  String cipher = '';
  List cipherStore = [];
  final splitEntry = entry.split('');

  for (var piece in splitEntry) {
    piece = piece.toLowerCase();
    if (piece == ' ') {
      cipherStore.add(piece);
    } else {
      var newChar = transformToCipherText(
          alphabet.indexWhere((element) => element == piece), key);
      cipherStore.add(newChar);
    }
  }

  cipher = cipherStore.join();

  return cipher;
}
