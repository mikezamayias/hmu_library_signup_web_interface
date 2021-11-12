import 'package:flutter/material.dart';

import '../main_view/main_view.dart';
import '../personal_details_view/personal_details_view.dart';
import '../../widgets/navigation_button_bar.dart';
import '../../widgets/yellow_text_form_field.dart';
import '../default_view/default_view.dart';

class CredentialsView extends StatefulWidget {
  const CredentialsView({Key? key}) : super(key: key);

  @override
  _CredentialsViewState createState() => _CredentialsViewState();
}

class _CredentialsViewState extends State<CredentialsView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController studentIDNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultView(
      headerChildren: const [
        Center(
          child: Text(
            'Fill in your\ncredentials',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
      contentChildren: [
        const Spacer(
          flex: 9,
        ),
        YellowTextFormField(
          hintText: 'Enter your email',
          labelText: 'Email',
          textEditingController: emailController,
        ),
        YellowTextFormField(
          hintText: 'Enter your password',
          labelText: 'Password',
          textEditingController: passwordController,
          isPassword: true,
        ),
        YellowTextFormField(
          hintText: 'Confirm your password',
          labelText: 'Confirm Password',
          textEditingController: confirmPasswordController,
          isPassword: true,
          previousPassword: passwordController.text,
        ),
        YellowTextFormField(
          hintText: 'Enter Student ID number',
          labelText: 'Student ID number',
          textEditingController: studentIDNumberController,
        ),
        const Spacer(
          flex: 9,
        ),
        NavigationButtonBar(
          isEnd: false,
          onPressedButton1: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MainView(),
            ),
          ),
          onPressedButton2: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PersonalDetailsView(),
            ),
          ),
        ),
        const Spacer(
          flex: 9,
        ),
      ],
    );
  }
}
