/// Calculation of the BMI according to the weight 
/// and the height provided in parameter
calculateBmi(weight, height) {
  int heightSquared = height * height;
  double bmi = weight / heightSquared;

  bmi = double.parse((bmi * 10000).toStringAsFixed(1));
  return bmi;
}

/// Returns the WHO (World Health Organization) classification 
/// corresponding to the BMI provided as a parameter
/// https://www.who.int/data/gho/data/themes/topics/topic-details/GHO/body-mass-index
whoClassification(bmi) {
  if (bmi < 18.5) {
    return 'According to WHO, you have underweight.';
  } else if (bmi >= 18.5 && bmi < 25) {
    return 'According to WHO, you have healthy weight.';
  } else if (bmi >= 25 && bmi < 30) {
    return 'According to WHO, you have overweight.';
  } else if (bmi > 30) {
    return 'According to WHO, you have obesity.';
  }
}