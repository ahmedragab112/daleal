import 'package:daleal/core/utils/color/app_color.dart';
import 'package:daleal/core/utils/widget/custom_textfiled.dart';
import 'package:flutter/material.dart';

class PasswordFormFiled extends StatefulWidget {
  const PasswordFormFiled({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;

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
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {});
          obscureText = !obscureText;
        },
        child: Icon(
          obscureText ? Icons.visibility_off : Icons.remove_red_eye,
          color: AppColor.primaryOrange,
        ),
      ),
      controller: widget.controller,
      validator: (value) {
        if (value == null ||
            value.isEmpty ) {
          return 'Please enter a valid password';
        }
        return null;
      },
    );
  }
}
