import 'package:singleton_examples/constants.dart';
import 'package:singleton_examples/util/validators/email_validator.dart';

class Validators {
  Validators._();

  static String? emailValidator(String? text) {
    if (text != null) {
      final trimmedText = text.trim();
      if (!ETEmailValidator.validate(trimmedText)) {
        return 'Wrong email';
      } else if (trimmedText.isEmpty) {
      } else if (trimmedText.length >= kMaxEmail) {}
    }

    return null;
  }

  static String? passwordValidator(String? text) {
    if (text != null) {
      if (text.contains(' ')) {
        return 'Password cannot contain spaces';
      }
      final trimmedText = text.trim();
      if (trimmedText.isEmpty) {
        return '';
      } else if (!trimmedText.contains(RegExp('[0-9]')) || !trimmedText.contains(RegExp('[a-zA-Z]'))) {
        return 'Password should contain at least one letter and one digit';
      }
    }

    return null;
  }
}
