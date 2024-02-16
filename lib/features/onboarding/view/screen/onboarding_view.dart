import 'package:daleal/core/utils/spaceing/spaceing.dart';
import 'package:daleal/core/utils/widget/custom_btn.dart';
import 'package:daleal/features/onboarding/view/widget/onboarding_body.dart';
import 'package:daleal/features/onboarding/view/widget/skip_btn.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const VerticalSpace(40)
 ,            const SkipButton(),
            const VerticalSpace(32),
            OnBoardingBody(
              controller: PageController(),
            ),
            const CustomButton(),
            const VerticalSpace(18)
          ],
        ),
      ),
    );
  }
}
