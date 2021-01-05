import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:auto_animated/auto_animated.dart';
import 'package:audioplayers/audio_cache.dart';
import 'write_page.dart';

int itemsCount = 28;

final options = LiveOptions(
  // Start animation after (default zero)
  delay: Duration(seconds: 1),

  // Show each item through (default 250)
  showItemInterval: Duration(milliseconds: 350),

  // Animation duration (default 250)
  showItemDuration: Duration(seconds: 1),

  // Animations starts at 0.05 visible
  // item fraction in sight (default 0.025)
  visibleFraction: 0.05,

  // Repeat the animation of the appearance
  // when scrolling in the opposite direction (default false)
  // To get the effect as in a showcase for ListView, set true
  reAnimateOnVisibility: false,
);

// Build animated item (helper for all examples)
Widget buildAnimatedItem(
  BuildContext context,
  int index,
  Animation<double> animation,
) =>
    // For example wrap with fade transition
    FadeTransition(
      opacity: Tween<double>(
        begin: 0,
        end: 1,
      ).animate(animation),
      // And slide transition
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset(0, -0.1),
          end: Offset.zero,
        ).animate(animation),
        // Paste you Widget
        child: MaterialButton(
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
            player.play('s${index + 1}.1.mp3');
            //Navigator.pushNamed(context, 'letters_page');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Write_Page(
                  index: index + 1,
                ),
              ),
            );
          },
          child: Image(
            image: AssetImage('images/i.${index + 1}.2.png'),
          ),
          color: Colors.white,
        ),
      ),
    );

class WriteCharacter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade500,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Lets Write Character',
          style: kLabelTextStyle,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(
                'Chose The Character',
                style: kLabelTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: LiveGrid.options(
              options: options,

              // Like GridView.builder, but also includes animation property
              itemBuilder: buildAnimatedItem,

              // Other properties correspond to the `ListView.builder` / `ListView.separated` widget
              itemCount: itemsCount,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
