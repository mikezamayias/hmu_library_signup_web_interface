import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hmu_library_signup_web_interface/src/widgets/secondary_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/main_button.dart';
import '../default_view/default_view.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultView(
      headerChildren: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(102, 102, 102, 0),
            child: Image.asset('assets/images/hmu_logo.png'),
          ),
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
        const Spacer(flex: 9),
        const Text(
          'Sign up',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(flex: 9),
        const Text(
          'Continue with',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(flex: 1),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Spacer(flex: 9),
            MainButton(
              onPressed: () => debugPrint('give me your email'),
              string: 'email',
            ),
            const Spacer(flex: 1),
            MainButton(
              onPressed: () => launch(
                  'https://accounts.google.com/signin/v2/identifier?hl=el&passive=true&continue=https%3A%2F%2Fwww.google.com%2F&ec=GAZAmgQ&flowName=GlifWebSignIn&flowEntry=ServiceLogin'),
              string: 'Google',
            ),
            const Spacer(flex: 1),
            MainButton(
              onPressed: () => launch('https://www.linkedin.com/login'),
              string: 'LinkedIn',
            ),
            const Spacer(flex: 9),
          ],
        ),
        const Spacer(flex: 1),
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'I agree to ',
              ),
              TextSpan(
                text: 'Terms of Service',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: ' and ',
              ),
              TextSpan(
                text: 'Privacy Policy',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: '.',
              ),
            ],
          ),
        ),
        const Spacer(flex: 9),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            SecondaryButton(string: 'Sign in'),
          ],
        ),
        const Spacer(flex: 9),
      ],
    );
  }
}
