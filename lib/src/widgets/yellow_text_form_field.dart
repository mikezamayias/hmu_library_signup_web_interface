import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class YellowTextFormField extends StatefulWidget {
  final String hintText;
  final String labelText;
  final String errorText;
  final TextEditingController textEditingController;

  const YellowTextFormField({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.errorText,
    required this.textEditingController,
  }) : super(key: key);

  @override
  _YellowTextFormFieldState createState() => _YellowTextFormFieldState();
}

class _YellowTextFormFieldState extends State<YellowTextFormField> {
  @override
  void dispose() {
    widget.textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      width: 300,
      child: TextFormField(
        controller: widget.textEditingController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) => EmailValidator.validate(value!)
            ? null
            : widget.errorText,
        cursorColor: const Color(0xFFA9915D),
        decoration: InputDecoration(
          hintText: widget.hintText,
          labelText: '${widget.labelText}*',
          alignLabelWithHint: true,
          focusColor: const Color(0xFFA9915D),
          labelStyle: const TextStyle(
            fontSize: 18,
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
}
