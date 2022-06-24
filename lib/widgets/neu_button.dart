import 'package:flutter/material.dart';

class NeuButton extends StatefulWidget {
  const NeuButton(
      {Key? key,
      required this.color,
      required this.icon,
      this.radius,
      required this.size,
      this.onPressed,
      this.shape})
      : super(
          key: key,
        );

  final Color color;
  final Widget icon;
  final BorderRadius? radius;
  final BoxShape? shape;
  final double size;
  final VoidCallback? onPressed;
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
        shape: widget.shape!,
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 0,
            blurRadius: 0,
            offset: Offset(3, 3),
          )
        ],
      ),
      child: SizedBox(
        height: widget.size,
        width: widget.size,
        child: TextButton(
          onPressed: () => widget.onPressed,
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
