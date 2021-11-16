abstract class StringValidator {
  bool isValid(String value);
}

class NotEmptyStringValidator implements StringValidator {
  @override
  bool isValid(String value) {
    return value.isNotEmpty;
  }
}

class EmailStringValidator implements StringValidator {
  final pattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  @override
  bool isValid(String value) {
    return value.isNotEmpty && RegExp(pattern).hasMatch(value);
  }
}

class PasswordStringValidator implements StringValidator {
  final pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';

  @override
  bool isValid(String value) {
    return RegExp(pattern).hasMatch(value);
  }
}
