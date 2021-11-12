import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

import '../credentials_view/credentials_view.dart';
import '../../widgets/secondary_button.dart';
import '../../widgets/main_button.dart';
import '../default_view/default_view.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  bool _agreed = false;

  @override
  Widget build(BuildContext context) {
    return DefaultView(
      headerChildren: [
        const Spacer(flex: 9),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.36,
          height: MediaQuery.of(context).size.height * 0.36,
          child: Image.asset('assets/images/hmu_logo.png'),
        ),
        const Spacer(flex: 3),
        Text(
          'HMU Library',
          style: GoogleFonts.gfsNeohellenic(
            textStyle: const TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Spacer(flex: 9),
      ],
      contentChildren: [
        const Spacer(flex: 9),
        const Text(
          'Sign up',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 42,
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
              onPressed: _agreed
                  ? () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CredentialsView(),
                        ),
                      )
                  : null,
              string: 'email',
            ),
            const Spacer(flex: 1),
            MainButton(
              onPressed: _agreed
                  ? () => launch(
                      'https://accounts.google.com/signin/v2/identifier?hl=el&passive=true&continue=https%3A%2F%2Fwww.google.com%2F&ec=GAZAmgQ&flowName=GlifWebSignIn&flowEntry=ServiceLogin')
                  : null,
              string: 'Google',
            ),
            const Spacer(flex: 1),
            MainButton(
              onPressed: _agreed
                  ? () => launch('https://www.linkedin.com/login')
                  : null,
              string: 'LinkedIn',
            ),
            const Spacer(flex: 9),
          ],
        ),
        const Spacer(flex: 1),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 24),
            GestureDetector(
              onTap: () => setState(() => _agreed = !_agreed),
              child: _agreed
                  ? const Icon(
                      Icons.check_box_rounded,
                      color: Color(0xFF1A4859),
                    )
                  : const Icon(
                      Icons.check_box_outline_blank_rounded,
                      color: Color(0xFF1A4859),
                    ),
            ),
            const Spacer(flex: 1),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'By signing up, you agree to our ',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: 'Terms of Service',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => showToast(
                            "You agree to Terms of Service",
                            context: context,
                          ),
                  ),
                  const TextSpan(
                    text: ' and ',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => showToast(
                            "You agree to Privacy Policy",
                            context: context,
                          ),
                  ),
                ],
              ),
            ),
            const Spacer(flex: 24),
          ],
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
