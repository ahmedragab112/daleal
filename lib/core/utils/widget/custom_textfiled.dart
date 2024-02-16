import 'package:daleal/core/extention/extentions.dart';
import 'package:daleal/core/utils/style/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled(
      {super.key,
      this.helperText,
      this.obscureText = false,
      this.suffixIcon,
      required this.lableText,
      this.keyboardType = TextInputType.emailAddress});
  final String? helperText;
  final bool? obscureText;
  final String lableText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      obscureText: obscureText!,
      style: AppTextStyle.font14RegularPoppinsablack,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        label: Text(
          lableText,
          style: AppTextStyle.font12RegularPoppinsaGrey,
        ),
        focusedBorder: formBoarder(),
        enabledBorder: formBoarder(),
        border: formBoarder(),
        helperText: helperText,
      ),
    ).setOnlyPadding(context, enableMediaQuery: false, left: 8.w);
  }

  OutlineInputBorder formBoarder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(color: Colors.grey),
      );
}
