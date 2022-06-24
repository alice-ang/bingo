import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:flutter/cupertino.dart';
import 'package:bingo/widgets/widgets.dart';

class NeuCardStory extends StatelessWidget {
  const NeuCardStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final header = context.knobs.text(label: 'Header', initialValue: 'Header');
    final title = context.knobs.text(label: 'Title', initialValue: 'Title');
    final subTitle =
        context.knobs.text(label: 'Subtitle', initialValue: 'Subtitle');

    return Center(
      child: SizedBox(
        height: 180,
        child: NeuCard(
          header: header,
          title: title,
          subTitle: subTitle,
        ),
      ),
    );
  }
}
