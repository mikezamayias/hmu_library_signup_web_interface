import 'package:flutter/material.dart';

const double _buttonTextFontSize = 15;
const FontWeight _buttonTextFontWeight = FontWeight.w100;

MaterialStateProperty<EdgeInsets> _buttonPadding() =>
    MaterialStateProperty.all<EdgeInsets>(
      const EdgeInsets.symmetric(
        horizontal: 21,
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

MaterialStateProperty<Color> _buttonOverlayColor(Color color) =>
    MaterialStateProperty.all<Color>(color.withOpacity(0.15));

ButtonStyle mainButtonStyle = ButtonStyle(
  padding: _buttonPadding(),
  shape: _buttonShape(),
  elevation: _buttonElevation(),
  backgroundColor: _buttonBackgroundColor(const Color(0xFF1A4859)),
);

ButtonStyle disabledMainButtonStyle = ButtonStyle(
  padding: _buttonPadding(),
  shape: _buttonShape(),
  elevation: _buttonElevation(),
  backgroundColor: _buttonBackgroundColor(const Color(0xFF393939)),
);

TextStyle mainButtonTextStyle = const TextStyle(
  color: Color(0xFFFFFFFF),
  fontSize: _buttonTextFontSize,
  fontWeight: _buttonTextFontWeight,
);

ButtonStyle secondaryButtonStyle = ButtonStyle(
  padding: _buttonPadding(),
  shape: _buttonShape(),
  elevation: _buttonElevation(),
  backgroundColor: _buttonBackgroundColor(const Color(0xFFFFFFFF)),
  side: _buttonSide(),
  overlayColor: _buttonOverlayColor(const Color(0xFF1A4859)),
);

ButtonStyle disabledSecondaryButtonStyle = ButtonStyle(
  padding: _buttonPadding(),
  shape: _buttonShape(),
  elevation: _buttonElevation(),
  backgroundColor: _buttonBackgroundColor(const Color(0xFFFFFFFF)),
  side: _buttonSide(),
  overlayColor: _buttonOverlayColor(const Color(0xFF393939)),
);

TextStyle secondaryButtonTextStyle = const TextStyle(
  color: Color(0xFF1A4859),
  fontSize: _buttonTextFontSize,
  fontWeight: _buttonTextFontWeight,
);

TextStyle disabledSecondaryButtonTextStyle = const TextStyle(
  color: Color(0xFF393939),
  fontSize: _buttonTextFontSize,
  fontWeight: _buttonTextFontWeight,
);
