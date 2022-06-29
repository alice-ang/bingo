import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum ButtonVariant { primary, secondary }

class BasicButton extends StatelessWidget {
  const BasicButton(
      {this.onPressed,
      required this.text,
      required this.variant,
      this.isDisabled,
      this.isLoading});

  final VoidCallback? onPressed;
  final String text;
  final ButtonVariant variant;
  final bool? isLoading;
  final bool? isDisabled;

  Color _getButtonColor(ButtonVariant variant) {
    switch (variant) {
      case ButtonVariant.primary:
        return Colors.black;
      case ButtonVariant.secondary:
        return Colors.white;
      default:
        return Colors.red;
    }
  }

  Color _getTexColor(ButtonVariant variant) {
    switch (variant) {
      case ButtonVariant.primary:
        return Colors.white;
      case ButtonVariant.secondary:
        return Colors.black;
      default:
        return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: ElevatedButton(
        onPressed: () {
          HapticFeedback.selectionClick();
          onPressed;
        },
        style: ElevatedButton.styleFrom(
          primary: _getButtonColor(variant),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: _getTexColor(variant),
          ),
        ),
      ),
    );
  }
}
