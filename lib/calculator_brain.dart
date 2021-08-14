import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi <= 18.5) {
      return 'underweight';
    } else if (_bmi > 18.5 && _bmi <= 24.9) {
      return 'normal';
    } else if (_bmi > 24.9 && _bmi <= 29.9) {
      return 'overweight';
    } else {
      return 'obese';
    }
  }

  String getInterpretation() {
    if (_bmi <= 18.5) {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    } else if (_bmi > 18.5 && _bmi <= 24.9) {
      return 'You have a normal body weight. Good job!';
    } else if (_bmi > 24.9 && _bmi <= 29.9) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else {
      return 'You have a higher than normal body weight. Try to exercise more.';
    }
  }
}
