class AppValidators {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }
    // regular expression to validate email
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    if (!emailRegex.hasMatch(value)) {
      return 'PInvalid email address.';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }
    // check if password is at least 6 characters
    if (value.length < 6) {
      return 'Password must be at least 6 characters.';
    }
    // check if password contains at least one uppercase letter
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter.';
    }
    // check if password contains at least one lowercase letter
    // if (!value.contains(RegExp(r'[a-z]'))) {
    //   return 'Password must contain at least one lowercase letter.';
    // }
    // check if password contains at least one digit
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one digit.';
    }
    // check if password contains at least one special character
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character.';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required.';
    }
    // regular expression to validate phone number
    final phoneRegex = RegExp(r'^[0-9]{10}$');
    if (!phoneRegex.hasMatch(value)) {
      return 'Invalid phone number.';
    }
    return null;
  }
}
