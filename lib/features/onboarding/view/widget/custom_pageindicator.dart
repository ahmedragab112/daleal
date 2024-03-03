import 'package:daleal/core/utils/color/app_color.dart';
import 'package:daleal/features/onboarding/model/pageview_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: pages.length,
      effect: const ExpandingDotsEffect(
        dotColor: AppColor.grey,
        dotHeight: 6,
        dotWidth: 10,
        activeDotColor: AppColor.secondryFilledColor,
      ),
    );
  }
}
