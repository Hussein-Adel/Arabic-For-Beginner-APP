import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/rendering.dart';

class Letters_Page extends StatelessWidget {
  Letters_Page({@required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Click on The Image',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: MaterialButton(
              color: Colors.white,
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
                final player = AudioCache();
                player.play('s$index.2.mp3');
              },
              child: Image(
                image: AssetImage('images/i.$index.1.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
