import 'package:flutter/material.dart';

import 'main_button.dart';

class NavigationButtonBar extends StatefulWidget {
  final bool isEnd;
  final VoidCallback onPressedButton1;
  final VoidCallback onPressedButton2;
  const NavigationButtonBar({
    Key? key,
    this.isEnd = false,
    required this.onPressedButton1,
    required this.onPressedButton2,
  }) : super(key: key);

  @override
  _NavigationButtonBarState createState() => _NavigationButtonBarState();
}

class _NavigationButtonBarState extends State<NavigationButtonBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          '* Required fields',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Spacer(flex: 12),
            MainButton(
              onPressed: widget.onPressedButton1,
              string: 'Go back',
            ),
            const Spacer(flex: 1),
            widget.isEnd
                ? MainButton(
                    onPressed: widget.onPressedButton2,
                    string: 'Sign up',
                  )
                : MainButton(
                    onPressed: widget.onPressedButton2,
                    string: 'Continue',
                  ),
            const Spacer(flex: 12),
          ],
        ),
      ],
    );
  }
}
