void main() {
  // Print "Hello, World!"
  print('Hello, World!');
  
  // Variables
  int age = 25;
  double height = 1.75;
  String name = 'John';
  bool isStudent = true;
  
  // Arithmetic operations
  int sum = 2 + 3;
  double product = 2.5 * 4;
  int difference = 10 - 5;
  double quotient = 15 / 3;
  int remainder = 10 % 3;
  
  // Conditional statement
  if (age >= 18) {
    print('$name is an adult.');
  } else {
    print('$name is a minor.');
  }
  
  // Loop
  for (int i = 0; i < 5; i++) {
    print('Count: $i');
  }
  
  // Functions
  int addNumbers(int a, int b) {
    return a + b;
  }
  
  int result = addNumbers(4, 5);
  print('Result: $result');
}
