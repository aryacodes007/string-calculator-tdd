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

  test('Step 3: Sum of two or more comma-separated numbers', () {
    expect(calc.add('1,2'), 3);
    expect(calc.add('1,2,3,4'), 10);
  });
}