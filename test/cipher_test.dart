import 'package:cipher/decode.dart';
import 'package:cipher/encrypt.dart';
import 'package:test/test.dart';

void main() {
  test('CipherText encrpyt', () {
    expect(encrypt('a b c', 1), 'b c d');
  });
  test('CipherText decode', () {
    expect(decode('b c d', 1), 'a b c');
  });
}
