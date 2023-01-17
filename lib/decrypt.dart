import 'package:cipher/alphabet.dart';
import 'package:cipher/transform.dart';

String decrypt(String entry, int key) {
  String decryptedMessage = '';
  List cipherStore = [];
  final splitEntry = entry.split('');

  for (var piece in splitEntry) {
    var newChar = transformToPlainText(
        alphabet.indexWhere((element) => element == piece), key);
    cipherStore.add(newChar);
  }

  decryptedMessage = cipherStore.join('');

  return decryptedMessage;
}
