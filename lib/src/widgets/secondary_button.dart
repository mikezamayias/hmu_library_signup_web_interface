import 'package:flutter/material.dart';

import '../theming/button_theme.dart';

class SecondaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String string;

  const SecondaryButton({
    Key? key,
    this.onPressed,
    required this.string,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed ?? () {},
      style: secondaryButtonStyle,
      child: Text(
        string,
        style: secondaryButtonTextStyle,
      ),
    );
  }
}
