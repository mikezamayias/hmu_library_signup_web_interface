import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class YellowCountryPicker extends StatefulWidget {
  final String labelText;

  final TextEditingController textEditingController;

  const YellowCountryPicker({
    Key? key,
    required this.labelText,
    required this.textEditingController,
  }) : super(key: key);

  @override
  _YellowCountryPickerState createState() => _YellowCountryPickerState();
}

class _YellowCountryPickerState extends State<YellowCountryPicker> {
  Country _selectedCountry = Country.tryParse('Greece')!;

  @override
  Widget build(BuildContext context) {
    widget.textEditingController.text = _selectedCountry.name;
    return SizedBox(
      height: 75,
      width: 300,
      child: TextFormField(
        readOnly: true,
        onTap: () {
          setState(() {
            _selectCountry(context);
          });
        },
        textAlignVertical: TextAlignVertical.center,
        controller: widget.textEditingController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onFieldSubmitted: (_) {},
        validator: (value) {},
        cursorColor: const Color(0xFF1A4859),
        decoration: InputDecoration(
          hintText: _selectedCountry.name,
          hintStyle: const TextStyle(
            color: Color(0xFF1A4859),
          ),
          labelText: '${widget.labelText}*',
          floatingLabelStyle: const TextStyle(
            color: Color(0xFF1A4859),
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
          isDense: true,
          errorMaxLines: 1,
          errorText: null,
          errorStyle: const TextStyle(
            color: Colors.transparent,
            fontSize: 0,
          ),
          alignLabelWithHint: true,
          focusColor: const Color(0xFFA9915D),
          labelStyle: const TextStyle(
            color: Color(0xFF1A4859),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFA9915D),
              width: 3.0,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.all(Radius.circular(21)),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFA9915D),
              width: 3.0,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.all(Radius.circular(21)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFA9915D),
              width: 3.0,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.all(Radius.circular(21)),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red.shade700,
              width: 3.0,
              style: BorderStyle.solid,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(21)),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red.shade700,
              width: 3.0,
              style: BorderStyle.solid,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(21)),
          ),
        ),
      ),
    );
  }

  _selectCountry(BuildContext context) async {
    showCountryPicker(
        countryListTheme: CountryListThemeData(
          textStyle: const TextStyle(fontSize: 21, color: Color(0xFF1A4859)),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(60.0),
            topRight: Radius.circular(60.0),
          ),
          inputDecoration: InputDecoration(
            floatingLabelStyle: const TextStyle(
              color: Color(0xFF1A4859),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            labelText: 'Search',
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF1A4859),
                width: 3.0,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(Radius.circular(60)),
            ),
            hintText: 'Start typing to search',
            hintStyle: const TextStyle(
              color: Color(0xFF1A4859),
            ),
            labelStyle: const TextStyle(
              color: Color(0xFF1A4859),
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: Color(0xFF1A4859),
            ),
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(60.0)),
              borderSide: BorderSide(
                color: const Color(0xFF1A4859).withOpacity(0.2),
              ),
            ),
          ),
        ),
        context: context,
        onSelect: (Country country) {
          setState(() {
            _selectedCountry = country;
            widget.textEditingController.text = _selectedCountry.name;
          });
        });
  }
}
