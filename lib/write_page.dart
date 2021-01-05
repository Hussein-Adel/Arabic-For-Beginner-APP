import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'video_player.dart';
import 'package:video_player/video_player.dart';

class Write_Page extends StatelessWidget {
  Write_Page({@required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0C542E),
      appBar: AppBar(
        title: Text(
          'Focus on learning',
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100.0,
              ),
              VideoPlayerArabic(
                videoPlayerController: VideoPlayerController.asset(
                  'videos/$index.mp4',
                ),
                looping: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
