import 'package:flutter/material.dart';

import 'src/views/main_view/main_view.dart';
import 'src/theming/text_theme.dart';

void main() {
  runApp(const HMULibrarySignUpWebInterface());
}

class HMULibrarySignUpWebInterface extends StatelessWidget {
  const HMULibrarySignUpWebInterface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HMU Library',
      theme: ThemeData(
        textTheme: textTheme,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainView(),
    );
  }
}
