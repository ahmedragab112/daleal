import 'package:daleal/config/router/app_routes.dart';
import 'package:daleal/core/extention/extentions.dart';
import 'package:daleal/core/function/onboarding_visited.dart';
import 'package:daleal/core/utils/widget/custom_btn.dart';
import 'package:daleal/features/onboarding/model/pageview_model.dart';
import 'package:flutter/material.dart';

class PageViewButton extends StatelessWidget {
  const PageViewButton({
    super.key,
    required this.controller,
    required this.index,
  });
  final int index;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      txt: index == 2 ? 'Get Started' : 'Next',
      onTap: () {
        controller.nextPage(
            duration: const Duration(seconds: 1), curve: Curves.easeIn);
        if (index == pages.length - 1) {
          onBoardingVisited().then(
              (value) => context.pushReplacementNamed(AppRoutes.loginPage));
        }
      },
    );
  }
}
