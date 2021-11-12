import 'package:flutter/material.dart';

import '../theming/button_theme.dart';

class SecondaryButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final String string;

  const SecondaryButton({
    Key? key,
    this.onPressed,
    required this.string,
  }) : super(key: key);

  @override
  State<SecondaryButton> createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<SecondaryButton> {
  @override
  Widget build(BuildContext context) {
    return widget.onPressed == null
        ? ElevatedButton(
            onPressed: widget.onPressed,
            style: disabledSecondaryButtonStyle,
            child: Text(
              widget.string,
              style: secondaryButtonTextStyle,
            ),
          )
        : ElevatedButton(
            onPressed: widget.onPressed,
            style: secondaryButtonStyle,
            child: Text(
              widget.string,
              style: secondaryButtonTextStyle,
            ),
          );
  }
}
