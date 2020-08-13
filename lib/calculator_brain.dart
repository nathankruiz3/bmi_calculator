// package to use pow() to square a number
import 'dart:math';

class CalculatorBrain {
  // variables to represent the height/weight
  final int height, weight;

  // a double to represent the bmi
  double _bmi;

  // Constructor
  CalculatorBrain({this.height, this.weight});

  // Function to calculate the bmi, uses the var's height and weight
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    // toStringAsFixed(i) converts a double to a string with i decimal places
    return _bmi.toStringAsFixed(1);
  }

  // Function to return a string representing the bmiLabel on the bmiPage (ex. overweight, underweight, etc. )
  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  // Function to return a string representing the description on the bmiPage
  String getDesc() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
