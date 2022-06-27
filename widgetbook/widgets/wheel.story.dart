import 'package:bingo/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class WheelStory extends StatelessWidget {
  const WheelStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Wheel(
        labels: ['Lable 1', 'Lable 2', 'Lable 3'],
      ),
    );
  }
}
