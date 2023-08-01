calculateBmi(weight, height) {
  int heightSquared = height * height;
  double bmi = weight / heightSquared;

  bmi = double.parse((bmi * 10000).toStringAsFixed(1));
  return bmi;
}
