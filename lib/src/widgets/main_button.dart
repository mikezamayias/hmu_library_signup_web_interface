import 'package:flutter/material.dart';

import '../theming/button_theme.dart';

class MainButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String string;
  final Widget? icon;

  const MainButton({Key? key, this.onPressed, required this.string, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return icon != null
        ? ElevatedButton(
            onPressed: onPressed ?? () {},
            style: mainButtonStyle,
            child: Text(
              string,
              style: mainButtonTextStyle,
            ),
          )
        : ElevatedButton.icon(
            onPressed: onPressed ?? () {},
            icon: icon!,
            style: mainButtonStyle,
            label: Text(
              string,
              style: mainButtonTextStyle,
            ),
          );
  }
}
