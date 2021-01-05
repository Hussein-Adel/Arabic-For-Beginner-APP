import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

int level = 0;

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3F2C56),
        title: Row(
          children: [
            Expanded(
              child: Text('Level $level'),
            ),
            Expanded(
              flex: 2,
              child: Text(
                ' تعلم اللغة العربية ',
                style: kArabicTextStyle,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 30.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: MaterialButton(
                  color: Color(0xFF3F2C56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      bottomLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  elevation: 35.0,
                  onPressed: () {
                    Navigator.pushNamed(context, 'level_one_page');
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: CircleAvatar(
                          radius: 70.0,
                          backgroundImage: AssetImage('images/Level_1.png'),
                        ),
                      ),
                      Text(
                        'Level 1',
                        style: kLabelTextStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          '2 Event',
                          style: kLabelTextStyle.copyWith(
                            fontSize: 22.0,
                            color: Color(0xFF615173),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: MaterialButton(
                  color: Color(0xFF3F2C56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      bottomLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  elevation: 35.0,
                  onPressed: () {
                    Navigator.pushNamed(context, 'level_two_page');
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: CircleAvatar(
                          radius: 70.0,
                          backgroundImage: AssetImage('images/Level_2.jpg'),
                        ),
                      ),
                      Text(
                        'Level 2',
                        style: kLabelTextStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          '2 Event',
                          style: kLabelTextStyle.copyWith(
                            fontSize: 22.0,
                            color: Color(0xFF615173),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
