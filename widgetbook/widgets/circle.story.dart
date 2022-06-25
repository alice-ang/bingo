import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:bingo/widgets/widgets.dart';

class CircleStory extends StatelessWidget {
  const CircleStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Color> colorOptions = [
      Colors.deepPurpleAccent.shade100,
      Colors.yellow,
      Colors.orange.shade600,
      Colors.pinkAccent.shade100
    ];

    final color = context.knobs.options(
      label: 'Colors',
      options: [
        ...colorOptions.map(
          (color) => Option(label: color.value.toString(), value: color),
        ),
      ],
    );

    final size = context.knobs.slider(
      label: 'Circle size',
      initialValue: 56,
      min: 24,
      max: 190,
      divisions: 28,
    );
    return Center(
      child: Circle(color: color, size: size),
    );
  }
}
