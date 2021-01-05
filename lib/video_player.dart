import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerArabic extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool looping;
  VideoPlayerArabic({this.videoPlayerController, this.looping});
  @override
  _VideoPlayerArabicState createState() => _VideoPlayerArabicState();
}

class _VideoPlayerArabicState extends State<VideoPlayerArabic> {
  ChewieController _chewieController;
  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio: 18 / 18,
      autoInitialize: true,
      autoPlay: true,
      looping: widget.looping,
      errorBuilder: (context, errorMasseg) {
        return Center(
          child: Text(
            errorMasseg,
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Chewie(
        controller: _chewieController,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
  }
}
