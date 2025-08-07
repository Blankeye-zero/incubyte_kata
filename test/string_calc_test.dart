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

     test('Test for two numbers provided as string', () {
      final StringCalculator instance = StringCalculator();
      final value = instance.add("1,3");
      expect(value, 4);
    });

    test('Test for three numbers provided as string',(){
      final StringCalculator instance = StringCalculator();
      final value = instance.add("1,3,8");
      expect(value, 12);
    });

    test('Test for newlines along with commas as delimeters',(){
      final StringCalculator instance = StringCalculator();
      final value = instance.add("1,3\n8");
      expect(value, 12);
    });

    test('Test for newlines along with commas as delimeters - 2',(){
      final StringCalculator instance = StringCalculator();
      final value = instance.add("1,16\n10,2\n1");
      expect(value, 30);
    });

    test('Test for Supporting dynamic delimeters',(){
      final StringCalculator instance = StringCalculator();
      final value = instance.add("//;\n1,16\n10,2\n1");
      expect(value, 30);
    });
    
  });
}
