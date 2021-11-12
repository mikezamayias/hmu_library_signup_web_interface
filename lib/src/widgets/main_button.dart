import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color backgroundColor;
  final String string;

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.backgroundColor,
    required this.string,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 27, vertical: 9),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
        ),
        elevation: MaterialStateProperty.all<double>(
          18,
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          backgroundColor,
        ),
      ),
      child: Text(string),
    );
  }
}
