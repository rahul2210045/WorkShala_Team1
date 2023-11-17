// validator.dart

String validateEmail(String email) {
  // Your email validation function here
  final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$',
  );

  if (email.trim().isEmpty) {
    return 'Email is required';
  } else if (!emailRegex.hasMatch(email)) {
    return 'Enter a valid email address';
  }

  return ''; // Empty string means the email is valid
}

String validatePassword(String password) {
  // Your password validation function here
  if (password.trim().isEmpty) {
    return 'Password is required';
  } else if (password.length < 6) {
    return 'Password must be at least 6 characters';
  }

  return ''; // Empty string means the password is valid
}

String? validateConfirmPassword(String? confirmPassword, String originalPassword) {
  // Your confirm password validation function here
  if (confirmPassword!.isEmpty) {
    return 'Confirm Password is required';
  } else if (confirmPassword != originalPassword) {
    return 'Passwords do not match';
  }

  return null; // Null means the confirm password is valid
}

String validateFirstName(String firstName) {
  // Your first name validation function here
  if (firstName.trim().isEmpty) {
    return 'First Name is required';
  }

  return ''; // Empty string means the first name is valid
}

String validateLastName(String lastName) {
  // Your last name validation function here
  if (lastName.trim().isEmpty) {
    return 'Last Name is required';
  }

  return ''; // Empty string means the last name is valid
}

String validateMobile(String mobile) {
  // Your mobile validation function here
  if (mobile.trim().isEmpty) {
    return 'Mobile is required';
  } else if (mobile.length != 10) {
    return 'Enter a valid 10-digit mobile number';
  }

  return ''; // Empty string means the mobile is valid
}
