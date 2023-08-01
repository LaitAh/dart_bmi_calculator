import 'package:bmi_calculator/bmi_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('calculateBmi', () {
    expect(calculateBmi(70, 170), 24.2);
  });
}
