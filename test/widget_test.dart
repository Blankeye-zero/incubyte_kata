// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

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
