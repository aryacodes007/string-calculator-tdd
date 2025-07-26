import 'package:test/test.dart';
import 'string_calculator.dart';

void main() {
  final calc = StringCalculator();

  test('Step 1: Empty string returns 0', () {
    expect(calc.add(''), 0);
  });

}