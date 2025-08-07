class StringCalculator {
  int add(String numbers) {
    //Input String of comma seperated numbers
    //Output an integer, sum of numbers

    int sum = 0;
    if (numbers.isEmpty) {
      // For Empty String input
      return sum;
    }
    //looked up regular expression to incorporate multiple delimeter checks
    RegExp delimeterPattern = RegExp(r'[,\n]');
    // Regular Expression for delimeters , and \n
    if(numbers.startsWith('//')){
        String newDelimeter =  numbers.split('\n').first.replaceAll('//', '');
        delimeterPattern =  RegExp('[,\n$newDelimeter]');   
        numbers = numbers.substring(4);
    }

    List<int> givenNumbers = numbers
        .split(delimeterPattern)
        .map((stringNumber) => int.parse(stringNumber))
        .toList();

    for (int number in givenNumbers) {
      sum = sum + number;
    }
    return sum;
  }
}
