import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:bingo/widgets/widgets.dart';

class NeuCardStory extends StatelessWidget {
  const NeuCardStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Color> colorOptions = [
      Colors.purple.shade100,
      Colors.green.shade100,
      Colors.orange.shade100,
      Colors.pinkAccent.shade100
    ];

    final header = context.knobs.text(label: 'Header', initialValue: 'Header');
    final title = context.knobs.text(label: 'Title', initialValue: 'Title');
    final subTitle =
        context.knobs.text(label: 'Subtitle', initialValue: 'Subtitle');
    final color = context.knobs.options(
      label: 'Colors',
      options: [
        ...colorOptions.map(
          (color) => Option(label: color.toString(), value: color),
        ),
      ],
    );

    return Center(
      child: SizedBox(
        height: 180,
        child: NeuCard(
          header: header,
          title: title,
          subTitle: subTitle,
          headerColor: color,
        ),
      ),
    );
  }
}
