import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:flutter/cupertino.dart';
import 'package:bingo/screens/screens.dart';

class GamesScreenStory extends StatelessWidget {
  const GamesScreenStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final count =
        context.knobs.number(label: 'Number of cards', initialValue: 5).toInt();

    return GamesScreen(
      gamesCount: count,
    );
  }
}
