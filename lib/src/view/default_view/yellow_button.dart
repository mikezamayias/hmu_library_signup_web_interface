import 'package:flutter/material.dart';

import 'package:hmu_library_signup_web_interface/src/widgets/custom_button.dart';

class YellowButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String string;

  const YellowButton({
    Key? key,
    this.onPressed,
    required this.string,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: onPressed ?? () {},
      backgroundColor: const Color(0xFFA9915D),
      string: string,
    );
  }
}
