import 'package:daleal/core/utils/widget/custom_textfiled.dart';
import 'package:flutter/material.dart';

class PasswordFormFiled extends StatefulWidget {
  const PasswordFormFiled({
    super.key,
  });

  @override
  State<PasswordFormFiled> createState() => _PasswordFormFiledState();
}

class _PasswordFormFiledState extends State<PasswordFormFiled> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFiled(
      lableText: 'Password',
      obscureText: obscureText,
      suffixIcon: IconButton(
          onPressed: () {
            setState(() {});
            obscureText = !obscureText;
          },
          icon: obscureText
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.remove_red_eye)),
    );
  }
}
