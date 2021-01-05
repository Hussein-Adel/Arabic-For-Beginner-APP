import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class LevelOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ToDO: Make Allert After Back From Quiz Page level one
    //ToDo: Make Function don't allow user to join level 2 until pass level 1
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Welcom in Level One',
          style: kLabelTextStyle.copyWith(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 25.0),
                child: MaterialButton(
                  color: Color(0xFFB00020),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  elevation: 35.0,
                  onPressed: () {
                    Navigator.pushNamed(context, 'pronounce_letters');
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: CircleAvatar(
                          radius: 70.0,
                          backgroundImage: AssetImage('images/learn.jpeg'),
                        ),
                      ),
                      Text(
                        'Learn to pronounce character ',
                        style: kLabelTextStyle.copyWith(
                          fontSize: 25.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 25.0),
                child: MaterialButton(
                  color: Color(0xFFB00020),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  elevation: 35.0,
                  onPressed: () {
                    Navigator.pushNamed(context, 'quiz_level_one');
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: CircleAvatar(
                          radius: 70.0,
                          backgroundImage: AssetImage('images/learn.jpeg'),
                        ),
                      ),
                      Text(
                        'Start Quiz',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
