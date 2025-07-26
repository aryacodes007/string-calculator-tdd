# String Calculator TDD Kata (Incubyte Assessment)

This is a Dart implementation of the String Calculator Kata using full TDD (Test Driven Development) methodology.

## ✅ Features Implemented Step-by-Step

1. Return 0 for an empty string
2. Return the number for a single number input
3. Return the sum of comma-separated numbers
4. Allow newlines as delimiters
5. Allow custom single-character delimiters
6. Throw exception for negative numbers (with list)
7. Ignore numbers greater than 1000
8. Allow custom delimiters of any length (e.g., `//[***]`)
9. Support multiple custom delimiters (e.g., `//[*][%]`, `//[***][%%]`)

## ▶️ How to Run

Install Dart & run tests using:

```bash
dart pub add test
dart run string_calculator_test.dart
```

## 📂 File Structure

- `string_calculator.dart` – The main implementation
- `string_calculator_test.dart` – TDD tests using `package:test`

## ✅ Completed as part of Incubyte TDD Assessment