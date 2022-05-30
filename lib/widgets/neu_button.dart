import 'package:flutter/material.dart';

class NeuButton extends StatefulWidget {
  NeuButton({Key? key, required this.color, required this.icon})
      : super(
          key: key,
        );

  final Color color;
  final Widget icon;

  @override
  State<NeuButton> createState() => _NeuButtonState();
}

class _NeuButtonState extends State<NeuButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: widget.color,
            border: Border.all(color: Colors.black, width: 3),
            borderRadius: const BorderRadius.all(
              Radius.circular(0),
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                spreadRadius: 1,
                blurRadius: 0,
                offset: Offset(4, 8),
              )
            ]),
        child: TextButton(
          onPressed: () => {Scaffold.of(context).openDrawer()},
          style: TextButton.styleFrom(
            backgroundColor: Colors.yellow,
            padding: EdgeInsets.zero,
            minimumSize: const Size(10, 10),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            alignment: Alignment.centerLeft,
          ),
          child: widget.icon,
        ),
      ),
    );
  }
}
