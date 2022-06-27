import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:bingo/widgets/widgets.dart';
import 'package:bingo/widgets/widgets.dart';

class CustomAppBarStory extends StatelessWidget {
  const CustomAppBarStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = context.knobs.text(label: 'Title', initialValue: 'Title');

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: title,
        leading: const NeuBackButton(),
      ),
      body: const CircleBackground(
        childWidget: Center(
          child: Text('WAAAVY 🌊'),
        ),
      ),
    );
  }
}
