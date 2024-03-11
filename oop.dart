import 'dart:io';

// Define an interface
abstract class Animal {
  void speak();
}

// Define a base class
class Mammal {
  void breathe() {
    print('Breathing');
  }
}

// Define a subclass that inherits from Mammal and implements Animal interface
class Dog extends Mammal implements Animal {
  @override
  void speak() {
    print('Woof!');
  }

  // Override the breathe method
  @override
  void breathe() {
    super.breathe(); // Call the superclass method
    print('Dog is breathing');
  }
}

void main() {
  // Create an instance of Dog
  var dog = Dog();

  // Demonstrate method overriding
  dog.breathe();

  // Demonstrate implementing an interface
  dog.speak();

  // Initialize data from a file
  var file = File('data.txt');
  var data = file.readAsStringSync();
  print('Data from file: $data');

  // Demonstrate the use of a loop
  for (var i = 1; i <= 5; i++) {
    print('Iteration $i');
  }
}
