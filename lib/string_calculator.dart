class StringCalculator {
  int add(String numbers) {
    //Input String of comma seperated numbers
    //Output an integer, sum of numbers
    int sum = 0;
    if (numbers.isEmpty) {
      return sum;
    }
    List<int> givenNumbers = numbers
        .split(',')
        .map((stringNumber) => int.parse(stringNumber))
        .toList();

    for (int number in givenNumbers) {
      sum = sum + number;
    }
    return sum;
  }
}
