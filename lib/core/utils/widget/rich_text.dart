import 'package:daleal/core/utils/style/app_textstyle.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({super.key, required this.text1, required this.text2, this.recognizer});
  final String text1;
  final String text2;
  final GestureRecognizer? recognizer;
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(text: text1, style: AppTextStyle.font12SemiBoldPoppinsaBrown),
        TextSpan(
            text: text2,
            style: AppTextStyle.font12RegularPoppinsaGrey,
            recognizer: recognizer),
      ]),
    );
  }
}
