import 'package:cipher/alphabet.dart';
import 'package:cipher/transform.dart';

String decode(String entry, int key) {
  String decodedMessage = '';
  List cipherStore = [];
  final splitEntry = entry.split('');

  for (var piece in splitEntry) {
    piece = piece.toLowerCase();
    if (piece == ' ') {
      cipherStore.add(piece);
    } else {
      var newChar = transformToPlainText(
          alphabet.indexWhere((element) => element == piece), key);
      cipherStore.add(newChar);
    }
  }

  decodedMessage = cipherStore.join('');

  return decodedMessage;
}
