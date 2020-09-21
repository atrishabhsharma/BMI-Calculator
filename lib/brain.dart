import 'dart:math';

class Brain {
  final int height;
  final int weight;
  double _bmi;
  Brain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'over weight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpret() {
    if (_bmi >= 25) {
      return 'You have higher than  normal body weight. Try to  exercise  more.';
    } else if (_bmi > 18.5) {
      return 'You have Normal body weight. Good Job !!!';
    } else {
      return 'You have a lower than normal body weight, try eating more !!! ';
    }
  }
}
