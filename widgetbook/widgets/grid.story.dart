import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:bingo/widgets/widgets.dart';

class GridStory extends StatelessWidget {
  const GridStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gridSize = context.knobs.options(
      label: 'Grid size',
      options: [
        const Option(label: '3x3', value: 3),
        const Option(label: '4x4', value: 4),
        const Option(label: '5x5', value: 5),
      ],
    );

    return Center(
      child: Grid(
        size: gridSize,
      ),
    );
  }
}
