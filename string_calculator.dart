class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      // Step 1: Return 0 for empty string
      return 0;
    }

    // Step 2: Support single or two numbers
    final parts = numbers.split(',');
    final values = parts.map(int.parse).toList();

    return values.fold(0, (a, b) => a + b);
  }
}
