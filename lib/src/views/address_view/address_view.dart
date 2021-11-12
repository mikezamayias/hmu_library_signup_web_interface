import 'package:flutter/material.dart';

import '../personal_details_view/personal_details_view.dart';
import '../default_view/default_view.dart';
import '../../widgets/navigation_button_bar.dart';
import '../../widgets/yellow_country_picker.dart';
import '../../widgets/yellow_text_form_field.dart';

class AddressView extends StatefulWidget {
  const AddressView({Key? key}) : super(key: key);

  @override
  _AddressViewState createState() => _AddressViewState();
}

class _AddressViewState extends State<AddressView> {
  TextEditingController cityTextController = TextEditingController();
  TextEditingController streetTextController = TextEditingController();
  TextEditingController postalCodeTextController = TextEditingController();
  TextEditingController countryEditingController = TextEditingController();

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
        YellowCountryPicker(
            labelText: 'Country',
            textEditingController: countryEditingController),
        YellowTextFormField(
          hintText: 'City',
          labelText: 'City',
          textEditingController: cityTextController,
        ),
        YellowTextFormField(
            hintText: 'Street name and number',
            labelText: 'Street',
            textEditingController: streetTextController),
        YellowTextFormField(
          hintText: 'Postal Code',
          labelText: 'Postal Code',
          textEditingController: postalCodeTextController,
        ),
        const Spacer(
          flex: 9,
        ),
        NavigationButtonBar(
          isEnd: true,
          onPressedButton1: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PersonalDetailsView(),
            ),
          ),
          onPressedButton2: () => showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text(
                'Congratulations!',
                style: TextStyle(
                  color: Color(0xFF1A4859),
                ),
              ),
              content: const Text(
                'You\'re signed up!',
                style: TextStyle(
                  color: Color(0xFF1A4859),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(21),
              ),
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
