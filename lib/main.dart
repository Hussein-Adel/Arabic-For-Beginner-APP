import 'package:arabic_for_beginners/level_two_page.dart';
import 'package:flutter/material.dart';
import 'start_page.dart';
import 'quiz_page_level_one.dart';
import 'level_One_Page.dart';
import 'learn_to_pronounce_letters.dart';
import 'draw_screen.dart';
import 'write_character.dart';

void main() => runApp(arabic_for_beginners());

class arabic_for_beginners extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF321C4B),
      ),
      initialRoute: 'start',
      routes: {
        'start': (context) => StartPage(),
        'quiz_level_one': (context) => QuizPage(),
        'level_one_page': (context) => LevelOnePage(),
        'level_two_page': (context) => LevelTwoPage(),
        'pronounce_letters': (context) => LearnToPronounceLetters(),
        'draw_screen': (context) => Draw(),
        'write_character': (context) => WriteCharacter(),
      },
    );
  }
}
