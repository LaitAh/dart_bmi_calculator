import 'package:bmi_calculator/user_answer.dart';
import 'package:test/test.dart';

void main() {
  test('checkedUserAnswer', () {
    expect(isChecked('50'), 50);
  });
  test('userAnswerNotCorrect', () {
    // The terminal will ask "Please, answer with an integer"
    // Respond: 70
    expect(isChecked('Hello'), 70);
  });
  test('userDontAnswer', () {
    // The terminal will ask "Please, answer with an integer"
    // Respond: 40
    expect(isChecked(''), 40);
  });
  test('userAppovesHissAnwer', () {
    // The terminal will ask "Your answer was 60. Is it correct? (Y/n)"
    // Respond Y
    expect(isApproved(60), 60);
  });
  test('userChangesHisAnwer', () {
    // The terminal will ask "Your answer was 90. Is it correct? (Y/n)"
    // Respond: n (or anything that is not Y)
    // "Please, correct your answer:"
    // Respond: 80
    // "Your answer was 80. Is it correct? (Y/n)"
    // Respond: Y
    expect(isApproved(90), 80);
  });
}
