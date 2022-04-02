import 'dart:math';

class CalculatorBrain {
  int height;
  int weight;
  double _bmi = 0;

  CalculatorBrain(this.height, this.weight);

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVER WEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDER WEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight . try to exercise more ';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight . good jop .';
    } else {
      return 'You have a lower than normal body weight .you can eat a bit  more  ';
    }
  }
}
