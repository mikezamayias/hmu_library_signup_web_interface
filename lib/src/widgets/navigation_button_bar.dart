import 'package:flutter/material.dart';

import 'main_button.dart';

class NavigationButtonBar extends StatefulWidget {
  const NavigationButtonBar({Key? key}) : super(key: key);

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
              onPressed: () {},
              string: 'Go back',
            ),
            const Spacer(flex: 1),
            MainButton(
              onPressed: () {},
              string: 'Continue',
            ),
            const Spacer(flex: 12),
          ],
        ),
      ],
    );
  }
}
