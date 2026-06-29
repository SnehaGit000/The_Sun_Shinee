import'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  
  final String hintText;
  final String labelText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function? validator;
  
  CustomTextField({
    required this.controller,
    required this.hintText,
    required this.labelText,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(

        validator: validator != null
            ? (value) => validator!(value)
            : null,

          autovalidateMode: AutovalidateMode.onUserInteraction,

                    controller: controller,
                     keyboardType: keyboardType,
                     decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(255, 231, 192, 1.0),
                      labelText: labelText,
                      hintText: hintText,
                      prefixIcon: prefixIcon,
                      suffixIcon: suffixIcon,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none
                      ),
                    ),
    );
  }
}

// ! Validation For  TextFormField
validateField(String value) {
  if (value.trim().isEmpty) {
    return 'Field is Required.';
  } else {
    return null;
  }
}

validateMobile(String value) {
  if (value.trim().isEmpty) {
    return 'Mobile Number is required.';
  }
  final RegExp indianMobileRegExp = RegExp(r'^[6-9]\d{9}$');
  if (!indianMobileRegExp.hasMatch(value)) {
    return 'Invalid Mobile Number';
  }
  if (value.length != 10) {
    return 'Mobile Number required at least 10 numbers';
  }
  return null;
}

validateOTP(String value) {
  if (value.trim().isEmpty) {
    return 'OTP is Required.';
  } else if (value.length < 4) {
    return 'OTP required at least 4 numbers';
  } else if (value.length > 4) {
    return 'OTP required at most 4 numbers';
  } else {
    return null;
  }
}

validateEmail(String value) {
  bool validEmail = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(value);
  if (value.trim().isEmpty) {
    return 'Email is Required.';
  } else if (validEmail == false) {
    return 'Invalid email address';
  } else {
    return null;
  }
}

validatePassword(String value) {
  if (value.trim().isEmpty) {
    return 'Password is required.';
  }
  if (value.length < 6) {
    return 'Password is required at least 6 digits';
  }
  return null;
}