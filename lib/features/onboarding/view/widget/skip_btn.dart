import 'package:daleal/config/router/app_routes.dart';
import 'package:daleal/core/extention/extentions.dart';
import 'package:daleal/core/function/onboarding_visited.dart';
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
        child: TextButton(
          onPressed: () {
            onBoardingVisited().then(
              (value) => context.pushReplacementNamed(AppRoutes.loginPage));
          },
          child: Text(
            'Skip',
            style: AppTextStyle.font16RegularPoppinsBlack,
          ),
        ));
  }
}
