
import 'package:daleal/core/utils/style/app_textstyle.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
       alignment: Alignment.topRight,
       child: Text(
         'Skip',
         style: AppTextStyle.font16RegularPoppinsBlack,
       ));
  }
}
