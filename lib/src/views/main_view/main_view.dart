import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/main_button.dart';
import '../default_view/default_view.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultView(
      headerChildren: [
        Padding(
          padding: const EdgeInsets.fromLTRB(102, 102, 102, 0),
          child: Expanded(child: Image.asset('assets/images/hmu_logo.png')),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(90, 75, 90, 90),
          child: Text(
            'HMU Library',
            style: GoogleFonts.gfsNeohellenic(
              textStyle: const TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
      contentChildren: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MainButton(
              onPressed: () => debugPrint('Sign in with Google'),
              string: 'Google',
            ),
          ],
        )
      ],
    );
  }
}
