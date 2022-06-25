import 'package:flutter/material.dart';
import 'package:bingo/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NeuBackButton extends StatelessWidget {
  const NeuBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeuButton(
      color: Colors.white,
      icon: const Icon(
        FontAwesomeIcons.arrowLeftLong,
        color: Colors.black,
      ),
      size: 32,
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}
