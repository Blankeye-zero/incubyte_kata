class NegativeNumberException implements Exception {
  final String message;
  NegativeNumberException(this.message) : super();
}

class StringCalculator {
  RegExp delimeterPatternSetter(String multipleNumbersAsString) {
    if (multipleNumbersAsString.startsWith('//')) {
      String newDelimeter = multipleNumbersAsString
          .split('\n')
          .first
          .replaceAll('//', '');
      return RegExp('[,\n$newDelimeter]');
    }

    return RegExp(r'[,\n]');
  }

  int add(String inputNumbers) {
    //Input String of comma seperated numbers
    //Output an integer, sum of numbers
    int sum = 0;
    // Default Sum
    if (inputNumbers.isEmpty) {
      // For Empty String input
      return sum;
    }
    //looked up regular expression to incorporate multiple delimeter checks
    RegExp delimeterPattern = delimeterPatternSetter(inputNumbers);
    // Regular Expression for delimeters , and \n
    if (inputNumbers.startsWith('//')) {
      inputNumbers = inputNumbers.substring(4);
      // Starts from after the first instance of \n
    }
    List<int> negativeNumbers = [];

    List<int> givenNumbers = inputNumbers.split(delimeterPattern).map((
      stringNumber,
    ) {
      int parsedInt = int.parse(stringNumber);
      if (parsedInt.isNegative) {
        negativeNumbers.add(parsedInt);
        return 0;
      }
      // returns 0 if number is negative and then adds the number to a seperate list
      // maps each number from the string to a seperate List
      return parsedInt;
    }).toList();

    if (negativeNumbers.isNotEmpty) {
      throw NegativeNumberException(
        'Negative Numbers not allowed: ${negativeNumbers.join(',')}',
      );
      // throws exception of specific type if number is negative
    }

    for (int number in givenNumbers) {
      sum = sum + number;
    }
    return sum;
  }
}
