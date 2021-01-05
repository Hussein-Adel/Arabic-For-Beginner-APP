import 'package:flutter/material.dart';
import 'constants.dart';

class LevelTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF266851),
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text(
          'Welcom Level Two',
          style: kLabelTextStyle,
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
                  color: Color(0xFF13EE94),
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
                    Navigator.pushNamed(context, 'write_character');
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: CircleAvatar(
                          radius: 70.0,
                          backgroundImage: AssetImage('images/write.jpg'),
                        ),
                      ),
                      Text(
                        'Learn How to Write character ',
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
                  color: Color(0xFF13EE94),
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
                    Navigator.pushNamed(context, 'draw_screen');
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: CircleAvatar(
                          radius: 70.0,
                          backgroundImage: AssetImage('images/write.2.jpg'),
                        ),
                      ),
                      Text(
                        'Train yourself',
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
