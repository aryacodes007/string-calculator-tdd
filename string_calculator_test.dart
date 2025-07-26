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

  test('Step 4: Newlines between numbers are allowed', () {
    expect(calc.add('1\n2,3'), 6);
  });

  test('Step 5: Custom single-character delimiter', () {
    expect(calc.add('//;\n1;2'), 3);
  });

  test('Step 6: Negative numbers throw exception', () {
    expect(() => calc.add('1,-2,3,-4'), throwsException);
  });

  test('Step 7: Ignore numbers greater than 1000', () {
    expect(calc.add('2,1001'), 2);
    expect(calc.add('1000,1'), 1001);
  });

  test('Step 8: Delimiters can be of any length', () {
    expect(calc.add('//[***]\n1***2***3'), 6);
  });
}