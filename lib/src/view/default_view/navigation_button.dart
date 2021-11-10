import 'package:flutter/material.dart';

import 'package:hmu_library_signup_web_interface/src/widgets/custom_button.dart';

class NavigationButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String string;

  const NavigationButton({
    Key? key,
    this.onPressed,
    required this.string,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: onPressed ?? () {},
      backgroundColor: const Color(0xFF1A4859),
      string: string,
    );
  }
}
