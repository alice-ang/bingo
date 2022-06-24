import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bingo/widgets/widgets.dart';

class CircleBackgroundStory extends StatelessWidget {
  const CircleBackgroundStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleBackground(
      childWidget: Center(
        child: Text(
          'This is a background',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
