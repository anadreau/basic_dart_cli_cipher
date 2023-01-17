import 'package:cipher/alphabet.dart';
import 'package:cipher/decrypt.dart';
import 'package:cipher/encrypt.dart';
import 'package:test/test.dart';

void main() {
  test('alphabet length', () {
    expect(alphabet.length, 83);
  });
  test('CipherText encrpyt/decrypt with key: 1', () {
    expect(encrypt(' ', 1), 'A');
    expect(decrypt('A', 1), ' ');
  });
  test('CipherText encrypt/decrypt key greater than length of charachter list',
      () {
    expect(encrypt('a', (alphabet.length + 5)), 'f');
    expect(decrypt('f', (alphabet.length + 5)), 'a');
  });

  test('CipherText encrypt/decrypt key 26', () {
    expect(decrypt('a bc', 26), '%a^&');
    expect(encrypt('%a^&', 26), 'a bc');
  });
  test('CipherText encrypt/decrypt key -5', () {
    expect(encrypt('a', (-5)), '6');
    expect(decrypt('6', (-5)), 'a');
  });

  test('CipherText encypt/decrypt later letter with large key', () {
    expect(encrypt('z', 223), '0');
    expect(decrypt('0', 223), 'z');
  });
}
