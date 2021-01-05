class Question {
  int _questionAnimal;
  int _questionAnswer1;
  int _questionAnswer2;
  int _questionAnswer3;
  int _questionAnswer4;
  int _blaceOfCorrectAwnser;
  Question(int C, int A, int q1, int q2, int q3, int q4) {
    _blaceOfCorrectAwnser = C;
    _questionAnimal = A;
    _questionAnswer1 = q1;
    _questionAnswer2 = q2;
    _questionAnswer3 = q3;
    _questionAnswer4 = q4;
  }

  int blaceOfCorrectAwnser() {
    return _blaceOfCorrectAwnser;
  }

  int getquestionAnimal() {
    return _questionAnimal;
  }

  int getquestionAnswer1() {
    return _questionAnswer1;
  }

  int getquestionAnswer2() {
    return _questionAnswer2;
  }

  int getquestionAnswer3() {
    return _questionAnswer3;
  }

  int getquestionAnswer4() {
    return _questionAnswer4;
  }
}
