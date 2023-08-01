import 'dart:io';

/// Asks the user if the answer is correct 
/// and if not, allows them to modify it
isApproved(varToApprove) {
  print('Your answer was $varToApprove. Is it correct? (Y/n)');
  String? userApproval = stdin.readLineSync();

  if (userApproval != 'Y') {
    do {
      print('Please, correct your answer:');
      varToApprove = stdin.readLineSync();

      varToApprove = isChecked(varToApprove);

      print('Your answer was $varToApprove. Is it correct? (Y/n)');
      userApproval = stdin.readLineSync();
    } while ( userApproval != 'Y' );
  }

  return varToApprove;
}

/// Checks that the user answered the question 
/// and that the answer could be convert to an integer
isChecked(varToCheck) {
  if (varToCheck?.isEmpty ?? true) {
    do {
      print('Please, answer with an integer');
      varToCheck = stdin.readLineSync();
    } while ( varToCheck?.isEmpty ?? true );
  }

  int? varConverted = int.tryParse(varToCheck);

  if (varConverted == null) {
    do {
      print('Please, answer with an integer');
      varToCheck = stdin.readLineSync();

      varConverted = int.tryParse(varToCheck);
    } while ( varConverted == null );
  }

  return varConverted;
}
