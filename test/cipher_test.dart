import 'package:cipher/alphabet.dart';
import 'package:cipher/decrypt.dart';
import 'package:cipher/encrypt.dart';
import 'package:test/test.dart';

void main() {
  test('alphabet length', () {
    expect(alphabet.length, 56);
  });
  test('CipherText encrpyt/decrypt with key: 1', () {
    expect(encrypt('a b c', 1), 'b!c!d');
    expect(decrypt('b!c!d', 1), 'a b c');
  });
  test('CipherText encrypt/decrypt key greater than length of charachter list',
      () {
    expect(encrypt('a', (alphabet.length + 5)), 'f');
    expect(decrypt('f', (alphabet.length + 5)), 'a');
  });

  test('CipherText encrypt/decrypt key 26', () {
    expect(decrypt('a bc', 26), '\$a%^');
    expect(encrypt('\$a%^', 26), 'a bc');
  });
  test('CipherText encrypt/decrypt key -5', () {
    expect(encrypt('a', (-5)), '6');
    expect(decrypt('6', (-5)), 'a');
  });

  test('CipherText encypt/decrypt later letter with large key', () {
    expect(encrypt('z', 223), 'y');
    expect(decrypt('y', 223), 'z');
  });
}
