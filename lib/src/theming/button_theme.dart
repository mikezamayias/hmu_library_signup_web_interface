import 'package:flutter/material.dart';

ButtonStyle mainButtonStyle = ButtonStyle(
  padding: _buttonPadding(),
  shape: _buttonShape(),
  elevation: _buttonElevation(),
  backgroundColor: _buttonBackgroundColor(const Color(0xFF1A4859)),
);

TextStyle mainButtonTextStyle = const TextStyle(
  color: Color(0xFFFFFFFF),
  fontSize: 18,
  fontWeight: FontWeight.w100,
);

ButtonStyle secondaryButtonStyle = ButtonStyle(
  padding: _buttonPadding(),
  shape: _buttonShape(),
  elevation: _buttonElevation(),
  backgroundColor: _buttonBackgroundColor(const Color(0xFFFFFFFF)),
  side: _buttonSide(),
);

TextStyle secondaryButtonTextStyle = const TextStyle(
  color: Color(0xFF1A4859),
  fontSize: 18,
  fontWeight: FontWeight.w100,
);

MaterialStateProperty<EdgeInsets> _buttonPadding() =>
    MaterialStateProperty.all<EdgeInsets>(
      const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 15,
      ),
    );

MaterialStateProperty<double> _buttonElevation() =>
    MaterialStateProperty.all<double>(
      18,
    );

MaterialStateProperty<OutlinedBorder> _buttonShape() =>
    MaterialStateProperty.all<OutlinedBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(60),
      ),
    );

MaterialStateProperty<Color> _buttonBackgroundColor(Color color) =>
    MaterialStateProperty.all<Color>(color);

MaterialStateProperty<BorderSide> _buttonSide() =>
    MaterialStateProperty.all<BorderSide>(
      const BorderSide(
        color: Color(0xFF1A4859),
        width: 2,
      ),
    );
