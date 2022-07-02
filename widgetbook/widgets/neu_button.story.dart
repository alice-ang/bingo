import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:bingo/widgets/widgets.dart';

class NeuButtonStory extends StatelessWidget {
  const NeuButtonStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Color> colorOptions = [
      Colors.purple.shade100,
      Colors.green.shade100,
      Colors.orange.shade100,
      Colors.pinkAccent.shade100
    ];

    final color = context.knobs.options(
      label: 'Colors',
      options: [
        ...colorOptions.map(
          (color) => Option(label: color.toString(), value: color),
        ),
      ],
    );

    final size = context.knobs
        .slider(
          label: 'Button Size',
          initialValue: 36,
          min: 10,
          max: 100,
          divisions: 100,
        )
        .toDouble();

    final radius = context.knobs
        .slider(
          label: 'Button radius',
          initialValue: 4,
          min: 0,
          max: 50,
          divisions: 10,
        )
        .toDouble();

    return Center(
      child: NeuButton(
        color: color,
        size: size,
        icon: Icon(
          Icons.menu,
          color: Colors.black,
          size: size,
        ),
        radius: BorderRadius.all(
          Radius.circular(radius),
        ),
      ),
    );
  }
}
