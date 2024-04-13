class Validator {
  String? validatePassword(String value) {
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  String? validateEmail(String value) {
    String emailPattern = r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';
    RegExp regExp = RegExp(emailPattern);

    if (!regExp.hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  String? validatePhoneNumber(String value) {
    // Remove any non-numeric characters
    String numericValue = value.replaceAll(RegExp(r'[^0-9]'), '');

    if (numericValue.length < 10) {
      return 'Enter a valid phone number with at least 10 digits';
    }

    return null;
  }

String? validateUsername(String value) {
    // Check if the username is not empty
    if (value.isEmpty) {
      return 'Username must not be empty';
    }

    // Check if the username starts with a letter
    if (!value[0].contains(RegExp(r'[a-zA-Z]'))) {
      return 'Username must start with a letter';
    }

    // Check if the username contains only letters, numbers, or underscores
    if (!value.contains(RegExp(r'^[a-zA-Z0-9_]+$'))) {
      return 'Username should not contain special characters';
    }

    return null;
  }


  static PasswordStrength checkPasswordStrength(String password) {
    bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = password.contains(RegExp(r'[a-z]'));
    bool hasDigits = password.contains(RegExp(r'[0-9]'));
    bool hasSymbols = password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

    // Consider additional factors for complexity
    int complexityCount = 0;
    if (hasUppercase) complexityCount++;
    if (hasLowercase) complexityCount++;
    if (hasDigits) complexityCount++;
    if (hasSymbols) complexityCount++;

    if (hasLowercase && hasUppercase) complexityCount++;
    if (hasLowercase && hasDigits) complexityCount++;
    if (hasUppercase && hasDigits) complexityCount++;
    if (hasDigits && hasLowercase && hasSymbols && hasUppercase) {
      complexityCount += 5;
    }

    if (password.length < 7 || complexityCount < 5) {
      return PasswordStrength.Weak;
    } else if (password.length >= 7 && complexityCount >= 10) {
      return PasswordStrength.Strong;
    } else {
      return PasswordStrength.Moderate;
    }
  }
}

enum PasswordStrength { Weak, Moderate, Strong }
