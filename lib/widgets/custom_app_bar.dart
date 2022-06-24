import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, this.leading, this.backgroundColor, this.title})
      : super(key: key);

  final Widget? leading;
  final Color? backgroundColor;
  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      backgroundColor: backgroundColor,
      title: title,
    );
  }
}
