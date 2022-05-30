import 'package:flutter/material.dart';

class NeuButton extends StatefulWidget {
  NeuButton(
      {Key? key, required this.color, required this.icon, required this.radius})
      : super(
          key: key,
        );

  final Color color;
  final Widget icon;
  final BorderRadius radius;

  @override
  State<NeuButton> createState() => _NeuButtonState();
}

class _NeuButtonState extends State<NeuButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: widget.color,
          border: Border.all(color: Colors.black, width: 3),
          borderRadius: widget.radius,
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 0,
              blurRadius: 0,
              offset: Offset(2, 4),
            )
          ]),
      child: SizedBox(
        height: 30,
        width: 30,
        child: TextButton(
          onPressed: () => {Scaffold.of(context).openDrawer()},
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: widget.icon,
        ),
      ),
    );
  }
}