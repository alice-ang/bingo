import 'package:flutter/material.dart';

class Circle extends StatefulWidget {
  Circle({
    Key? key,
    required this.color,
    required this.size,
  }) : super(key: key);

  final Color color;
  final double size;

  @override
  State<Circle> createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: widget.color,
          border: Border.all(color: Colors.black, width: 3),
          borderRadius: const BorderRadius.all(
            Radius.circular(100),
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 0,
              blurRadius: 0,
              offset: Offset(3, 3),
            )
          ]),
      child: SizedBox(
        height: widget.size,
        width: widget.size,
      ),
    );
  }
}
