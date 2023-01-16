import 'package:cipher/alphabet.dart';
import 'package:cipher/transform.dart';

String decrypt(String entry, int key) {
  String decodedMessage = '';
  List cipherStore = [];
  final splitEntry = entry.split('');

  for (var piece in splitEntry) {
    piece = piece.toLowerCase();
    var newChar = transformToPlainText(
        alphabet.indexWhere((element) => element == piece), key);
    cipherStore.add(newChar);
  }

  decodedMessage = cipherStore.join('');

  return decodedMessage;
}
