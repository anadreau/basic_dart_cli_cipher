import 'package:cipher/encrypt.dart';
import 'package:test/test.dart';

void main() {
  test('CipherText', () {
    expect(encrypt('a b c', 1), 'b c d');
  });
}
