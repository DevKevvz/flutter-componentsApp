import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class CustomInputField extends StatelessWidget {
  final String? placeHolder;
  final String? label;
  final String? helperTxt;
  final IconData? icon;
  final IconData? sufixIcon;
  final TextInputType? keyboardType;
  final bool isPassword;
  final String formProperty;
  final Map<String, String> fromValues;
  const CustomInputField({
    Key? key,
    this.placeHolder,
    this.label,
    this.helperTxt,
    this.icon,
    this.sufixIcon,
    this.keyboardType,
    this.isPassword = false,
    required this.formProperty,
    required this.fromValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: isPassword,
      onChanged: (value) {
        fromValues[formProperty] = value;
      },
      validator: (value) {
        if (value == null) return 'This field is required';
        return value.length < 3 ? '3 characters min' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: placeHolder,
        labelText: label,
        helperText: helperTxt,
        suffixIcon: sufixIcon == null ? null : Icon(sufixIcon),
        // prefixIcon: Icon(Icons.verified_user_outlined),
        icon: icon == null ? null : Icon(icon),
        // counterText: '3 caracteres'
      ),
    );
  }
}
