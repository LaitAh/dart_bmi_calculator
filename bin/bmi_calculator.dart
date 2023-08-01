import 'dart:io';

import 'package:bmi_calculator/bmi_calculator.dart';

void main(List<String> arguments) {
  int? weight;
  int? height;
  String? name;
  double bmi;

  print('Hello, what is your name?');
  name = stdin.readLineSync();

  // Weight
  print('Nice to meet you $name, we will help you to calculate your BMI. First, what is your weight (in kg)?');
  String? weightInput = stdin.readLineSync();

  weight = int.tryParse(weightInput!);

  // Height
  print('Your weight is $weight. Now, we need your height (in cm):');
  String? heightInput = stdin.readLineSync();

  height = int.tryParse(heightInput!);

  // BMI
  print('Thank you $name for your answer. We recorded your weight is $weight and your height is $height. We will now proceed to calculate your BMI...');
  bmi = calculateBmi(weight, height);
  print('Your BMI is $bmi.');
  print('Thank your for using our app! Hope to see you soon, $name.');
}
