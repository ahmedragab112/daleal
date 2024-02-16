import 'package:daleal/core/utils/widget/custom_btn.dart';
import 'package:flutter/material.dart';

class CustomPrimaryButton extends StatelessWidget {
  const CustomPrimaryButton({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      txt: text,
      onTap: () {},
    );
  }
}
