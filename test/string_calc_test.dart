import 'package:flutter_test/flutter_test.dart';

import 'package:incubyte_kata/string_calculator.dart';

void main() {
  group('String Calculator', () {
    test('Test for empty String', () {
      final StringCalculator instance = StringCalculator();
      final value = instance.add("");
      expect(value, 0);
    });

    test('Test for one number provided as string', () {
      final StringCalculator instance = StringCalculator();
      final value = instance.add("1");
      expect(value, 1);
    });
  });
}
