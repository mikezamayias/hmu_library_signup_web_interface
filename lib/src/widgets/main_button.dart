import 'package:flutter/material.dart';

import '../theming/button_theme.dart';

class MainButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String string;

  const MainButton({
    Key? key,
    this.onPressed,
    required this.string,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed ?? () {},
      style: mainButtonStyle,
      child: Text(
        string,
        style: mainButtonTextStyle,
      ),
    );
  }
}
