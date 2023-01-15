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
  test('CipherText encrypt/decrypt key greater than 25', () {
    expect(encrypt('a', 50), 'y');
    expect(decrypt('y', 50), 'a');
  });
  test('alphabet length', () {
    expect(alphabet.length, 26);
  });
  test('CipherText decode key 26', () {
    print('Test print statement');
    expect(decrypt('a bc', 26), 'a bc');
    expect(encrypt('y ab', 26), 'y ab');
  });
  test('CipherText encrypt/decrypt key -5', () {
    expect(encrypt('a', (-5)), 'v');
    expect(decrypt('v', (-5)), 'a');
  });

  test('CipherText encypt/decrypt later letter with large key', () {
    expect(encrypt('z', 50), 'x');
    expect(decrypt('x', 50), 'z');
  });
}
