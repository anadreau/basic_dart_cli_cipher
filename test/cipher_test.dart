import 'package:cipher/alphabet.dart';
import 'package:cipher/decrypt.dart';
import 'package:cipher/encrypt.dart';
import 'package:test/test.dart';

void main() {
  test('CipherText encrpyt', () {
    expect(encrypt('a b c', 1), 'b c d');
  });
  test('CipherText decode', () {
    expect(decrypt('b c d', 1), 'a b c');
  });
  test('CipherText decode key greater than 25', () {
    expect(decrypt('b c d', 50), 'b c d');
  });
  test('alphabet length', () {
    expect(alphabet.length, 26);
  });
  test('CipherText decode key 26', () {
    expect(decrypt('a', 26), 'b');
  });
}
