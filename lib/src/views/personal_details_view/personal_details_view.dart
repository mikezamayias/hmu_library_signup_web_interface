import 'package:flutter/material.dart';

import '../../widgets/navigation_button_bar.dart';
import '../../widgets/yellow_text_form_field.dart';
import '../default_view/default_view.dart';

class PersonalDetailsView extends StatefulWidget {
  const PersonalDetailsView({Key? key}) : super(key: key);

  @override
  _PersonalDetailsViewState createState() => _PersonalDetailsViewState();
}

class _PersonalDetailsViewState extends State<PersonalDetailsView> {
  TextEditingController firstNameTextController = TextEditingController();
  TextEditingController lastNameTextController = TextEditingController();
  TextEditingController phoneNumberTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultView(
      headerChildren: const [
        Center(
          child: Text(
            'Fill in your\npersonal details',
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
          hintText: 'Enter your first name',
          labelText: 'First Name',
          textEditingController: firstNameTextController,
        ),
        YellowTextFormField(
          hintText: 'Enter your last name',
          labelText: 'Last Name',
          textEditingController: lastNameTextController,
          isPassword: true,
        ),
        YellowTextFormField(
          hintText: 'Enter your phone number',
          labelText: 'Phone Number',
          textEditingController: phoneNumberTextController,
        ),
        const Spacer(
          flex: 9,
        ),
        const NavigationButtonBar(),
        const Spacer(
          flex: 9,
        ),
      ],
    );
  }
}
