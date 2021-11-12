import 'package:email_validator/email_validator.dart';

String validateEmail(String email) {
  if (email.isEmpty) {
    return 'Email is required';
  }
  if (!EmailValidator.validate(email)) {
    return 'Please enter a valid email';
  }
  return 'success';
}

String validatePassword(String password) {
  if (password.isEmpty) {
    return 'Password is required';
  }
  if (password.length < 8) {
    return 'Password must be at least 8 characters long.';
  }
  RegExp regex = RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$',
  );
  if (!regex.hasMatch(password)) {
    return '''Password must have at least one
uppercase letter, one lowercase 
letter, and one number.''';
  }
  return 'success';
}

String validateConfirmPassword(String password, String confirmPassword) {
  if (confirmPassword.isEmpty) {
    return 'Confirm password is required';
  }
  if (password != confirmPassword) {
    return 'Passwords do not match.';
  }
  return 'success';
}
