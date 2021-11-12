import 'package:flutter/material.dart';

import 'src/widgets/main_button.dart';
import 'src/widgets/secondary_button.dart';
import 'src/theming/text_theme.dart';
import 'src/views/default_view/default_view.dart';

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
      home: DefaultView(
        headerChildren: [
          Row(
            children: const [
              MainButton(
                string: 'email',
              ),
              SecondaryButton(
                string: 'Google',
              ),
              SecondaryButton(
                string: 'LinkedIn',
              ),
            ],
          )
        ],
        contentChildren: [
          Row(
            children: const [
              SecondaryButton(
                string: 'Sign In',
              ),
              MainButton(
                string: 'Continue',
              ),
            ],
          )
        ],
      ),
    );
  }
}
