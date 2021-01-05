import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'Button_Brain.dart';
import 'question.dart';
import 'constants.dart';

ButtonBrain Button = ButtonBrain();

int i = 0;
int C;
Question q;
int Animal, B1, B2, B3, B4;
List ask = Button.getQuestions();
void getQuestion() {
  q = ask[i];
  Animal = q.getquestionAnimal();
  B1 = q.getquestionAnswer1();
  B2 = q.getquestionAnswer2();
  B3 = q.getquestionAnswer3();
  B4 = q.getquestionAnswer4();
  C = q.blaceOfCorrectAwnser();
  i++;
}

String show = '';
int Score = 0;

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  void checkAnswer(int numberOfButton) {
    setState(() {
      scoreKeeper.clear();
      if (Score < 14) {
        show = 'Unfortunately you didn\'t pass the test';
      } else {
        show = 'Congratulations, you passed the test';
      }
      if (i > 27) {
        Alert(context: context, title: "Finishde!", desc: show).show();
        Navigator.pushNamed(context, 'level_one_page');
      } else {
        if (numberOfButton == q.blaceOfCorrectAwnser()) {
          Score++;
          final player = AudioCache();
          player.play('Exlante.mp3');
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          final player = AudioCache();
          player.play('Wrong.mp3');
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    getQuestion();

    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text(
          'Your Score $Score',
          style: kLabelTextStyle,
        ),
      )),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.all(35.0),
                  child: Center(
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'أختر الحرف الذي يبداء به هذا الحيوان',
                              // quizBrain.getQuestionText(),
                              textAlign: TextAlign.center,
                              style: kArabicTextStyle.copyWith(
                                color: Colors.black,
                                fontSize: 25.0,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: MaterialButton(
                            onPressed: () {
                              final player = AudioCache();
                              player.play('s$Animal.2.mp3');
                              scoreKeeper.add(Icon(
                                Icons.check,
                                color: Colors.green,
                              ));
                            },
                            child: Image(
                              height: 350.0,
                              image: AssetImage('images/i.$Animal.1.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: FlatButton(
                              child: Image(
                                image: AssetImage('images/i.$B1.2.png'),
                              ),
                              onPressed: () {
                                //The user picked true.
                                checkAnswer(0);
                              },
                            ),
                          ),
                          Expanded(
                            child: FlatButton(
                              child: Image(
                                image: AssetImage('images/i.$B2.2.png'),
                              ),
                              onPressed: () {
                                //The user picked true.
                                checkAnswer(1);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: FlatButton(
                              child: Image(
                                image: AssetImage('images/i.$B3.2.png'),
                              ),
                              onPressed: () {
                                //The user picked true.
                                checkAnswer(2);
                              },
                            ),
                          ),
                          Expanded(
                            child: FlatButton(
                              child: Image(
                                image: AssetImage('images/i.$B4.2.png'),
                              ),
                              onPressed: () {
                                //The user picked true.
                                checkAnswer(3);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: scoreKeeper,
              )
            ],
          ),
        ),
      ),
    );
  }
}
