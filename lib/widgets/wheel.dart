import 'package:flutter/material.dart';

class Wheel extends StatelessWidget {
  const Wheel({Key? key, required this.labels}) : super(key: key);

  final List<String> labels;

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('wheeel'),
    );
  }
}
