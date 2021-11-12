import 'package:flutter/material.dart';

import '../theming/button_theme.dart';

class MainButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final String string;

  const MainButton({
    Key? key,
    this.onPressed,
    required this.string,
  }) : super(key: key);

  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return widget.onPressed == null
        ? ElevatedButton(
            onPressed: widget.onPressed,
            style: disabledMainButtonStyle,
            child: Text(
              widget.string,
              style: mainButtonTextStyle,
            ),
          )
        : ElevatedButton(
            onPressed: widget.onPressed,
            style: mainButtonStyle,
            child: Text(
              widget.string,
              style: mainButtonTextStyle,
            ),
          );
  }
}
