class StringCalculator{
    
    int add(String numbers){
        //Input String of comma seperated numbers
        //Output an integer, sum of numbers
        List<int> givenNumbers = numbers.split(',').map((stringNumber) => int.parse(stringNumber)).toList();
        int sum = 0;
        for (int number in givenNumbers){
            sum = sum+number;
        }
        return sum;
    }
}