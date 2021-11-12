import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:hmu_library_signup_web_interface/src/widgets/yellow_text_form_field.dart';

import '../default_view/default_view.dart';

class CredentialsView extends StatefulWidget {
  const CredentialsView({Key? key}) : super(key: key);

  @override
  _CredentialsViewState createState() => _CredentialsViewState();
}

class _CredentialsViewState extends State<CredentialsView> {
  TextEditingController emailController = TextEditingController();

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
          errorText: 'Please enter your correct email address',
          textEditingController: emailController,
        ),
        const Spacer(
          flex: 9,
        ),
      ],
    );
  }
}
