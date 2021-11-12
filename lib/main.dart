import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

import 'src/theming/text_theme.dart';
import 'src/views/main_view/main_view.dart';
import 'src/views/credentials_view/credentials_view.dart';
import 'src/views/personal_details_view/personal_details_view.dart';

void main() {
  runApp(const HMULibrarySignUpWebInterface());
}

class HMULibrarySignUpWebInterface extends StatefulWidget {
  const HMULibrarySignUpWebInterface({Key? key}) : super(key: key);

  @override
  State<HMULibrarySignUpWebInterface> createState() => _HMULibrarySignUpWebInterfaceState();
}

class _HMULibrarySignUpWebInterfaceState extends State<HMULibrarySignUpWebInterface> {
  @override
  Widget build(BuildContext context) {
    return StyledToast(
      locale: const Locale('en', 'US'),
      animDuration: const Duration(milliseconds: 120),
      toastPositions: StyledToastPosition.top,
      reverseAnimation: StyledToastAnimation.slideFromTop,
      toastAnimation: StyledToastAnimation.slideToTop,
      backgroundColor: const Color(0xFF1A4859),
      child: MaterialApp(
        title: 'HMU Library',
        theme: ThemeData(
          textTheme: textTheme,
        ),
        debugShowCheckedModeBanner: false,
        home: const PersonalDetailsView(),
      ),
    );
  }
}
