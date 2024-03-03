import 'package:daleal/core/utils/spaceing/spaceing.dart';
import 'package:daleal/core/utils/style/app_textstyle.dart';
import 'package:flutter/material.dart';

class CustomHomeTitle extends StatelessWidget {
  const CustomHomeTitle({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: AppTextStyle.font20RegularBrown),
        const HorizantelSpace(8),
      ],
    );
  }
}
