
import 'package:daleal/core/utils/style/app_textstyle.dart';
import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome !',
      style: AppTextStyle.font24SemiBoldPoppinsaPrimryBlack,
      textAlign: TextAlign.center,
    );
  }
}
