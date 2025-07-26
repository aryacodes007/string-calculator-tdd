class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      // Step 1: Return 0 for empty string
      return 0;
    }

    // Step 5/8: Handle custom delimiters of any length
    if (numbers.startsWith('//')) {
      if (numbers.startsWith('//[')) {
        // Step 8: Support custom delimiters of any length
        final headerMatch = RegExp(r'^//(\[.*?\])+\n').firstMatch(numbers);
        if (headerMatch != null) {
          final delimiters = RegExp(r'\[(.*?)\]')
              .allMatches(headerMatch.group(0)!)
              .map((m) => RegExp(RegExp.escape(m.group(1)!)));

          numbers = numbers.substring(headerMatch.end);
          for (final d in delimiters) {
            numbers = numbers.replaceAll(d, ',');
          }
        }
      } else {
        final match = RegExp(r'^//(.)\n').firstMatch(numbers);
        if (match != null) {
          final delimiter = match.group(1)!;
          numbers = numbers.substring(match.end);
          numbers = numbers.replaceAll(delimiter, ',');
        }
      }
    }

    // Step 4: Handle newline as delimiter
    numbers = numbers.replaceAll('\n', ',');

    // Step 2/3: Handle any amount of comma-separated numbers
    final parts = numbers.split(',');
    final values = parts
        .where((p) => p.isNotEmpty)
        .map(int.parse)
        .where((n) => n <= 1000) // Step 7: Ignore numbers > 1000
        .toList();

    // Step 6: Throw an exception if any negative numbers
    final negatives = values.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception('negatives not allowed: ${negatives.join(',')}');
    }

    return values.fold(0, (a, b) => a + b);
  }
}
