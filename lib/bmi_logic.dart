import 'dart:math';

class BmiLogic {
  BmiLogic({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 0.0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You should maintain your weight and do regular exercises';
    } else if (_bmi > 18.5) {
      return 'You have a good weight, keep it up and drink water';
    } else {
      return 'You should gain more weight, take exercises daily and eat more';
    }
  }
}
