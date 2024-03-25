# digit_to_words_bd

A Dart package to convert numeric digits into their corresponding words representation.

## Features

- Converts numeric digits into words.
- Handles conversion for integers and decimal numbers.
- Supports conversion for numbers up to the Arab scale.

## Getting Started

To use this package, add `digit_to_words_bd` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  digit_to_words_bd: ^1.0.1

platforms:
  ios: '9.0'
  android: ^16.0.0
```
Then, import the package into your Dart code:

## import 'package:digit_to_words_bd/digit_to_words_bd.dart';

Now you can use the digit_to_words_bd function to convert numeric digits into words.

Usage:

import 'package:digit_to_words_bd/digit_to_words_bd.dart';

void main() async {
  double amount = 1234.56; // Test input
  String result = await digit_to_words_bd(amount);
  print("Amount in words: $result");
}

Additional Information

To report bugs, request features, or contribute to the package, please visit the GitHub repository.

