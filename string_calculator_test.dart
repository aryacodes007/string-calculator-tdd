import 'package:test/test.dart';
import 'string_calculator.dart';

void main() {
  final calc = StringCalculator();

  test('Step 1: Empty string returns 0', () {
    expect(calc.add(''), 0);
  });

  test('Step 2: Single number returns the same number', () {
    expect(calc.add('5'), 5);
  });

}