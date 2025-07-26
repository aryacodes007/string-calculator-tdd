class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      // Step 1: Return 0 for empty string
      return 0;
    }

    // Step 5: Handle single-character custom delimiter
    if (numbers.startsWith('//')) {
      final match = RegExp(r'^//(.)\n').firstMatch(numbers);
      if (match != null) {
        final delimiter = match.group(1)!;
        numbers = numbers.substring(match.end);
        numbers = numbers.replaceAll(delimiter, ',');
      }
    }

    // Step 4: Handle newline as delimiter
    numbers = numbers.replaceAll('\n', ',');

    // Step 2/3: Handle any amount of comma-separated numbers
    final parts = numbers.split(',');
    final values = parts.map(int.parse).toList();

    return values.fold(0, (a, b) => a + b);
  }
}
