import 'dart:math';
import 'question.dart';

class ButtonBrain {
  List<int> check = [0];
  List<int> check_B = [0];
  List<int> _LetterOfButton = [];
  List<Question> questionBank = [];
  int _numberOfAnimal = 0;
  int _BlaceOfCorrectAwnser = 0;
  int _Letter = 0;
  void choiseCorrectLetter() {
    _numberOfAnimal = Random().nextInt(28) + 1;
    _BlaceOfCorrectAwnser = Random().nextInt(4);
  }

  void choiseAnimal() {
    for (int i = 0; _LetterOfButton.length < 4; i++) {
      check_B.add(_numberOfAnimal);
      _Letter = Random().nextInt(28) + 1;
      /*
      if (_LetterOfButton.length == _BlaceOfCorrectAwnser) {
        _LetterOfButton.add(_numberOfAnimal);
        check_B.add(_numberOfAnimal);
      } else

       */

      if (!check_B.contains(_Letter)) {
        _LetterOfButton.add(_Letter);
        check_B.add(_Letter);
      }
    }
    _LetterOfButton.insert(_BlaceOfCorrectAwnser, _numberOfAnimal);
    check_B.clear();
  }

  void fillQuestionBank() {
    for (int i = 0; questionBank.length < 28; i++) {
      choiseCorrectLetter();
      choiseAnimal();

      if (check.contains(_numberOfAnimal)) {
        i++;
      } else {
        check.add(_numberOfAnimal);
        questionBank.add(
          Question(
            _BlaceOfCorrectAwnser,
            _numberOfAnimal,
            _LetterOfButton[0],
            _LetterOfButton[1],
            _LetterOfButton[2],
            _LetterOfButton[3],
          ),
        );
        _LetterOfButton.clear();
      }
    }
  }

  ButtonBrain() {
    fillQuestionBank();
  }

  List getQuestions() {
    return questionBank;
  }
}
