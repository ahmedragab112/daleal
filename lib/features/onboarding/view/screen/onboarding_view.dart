import 'package:daleal/core/utils/spaceing/spaceing.dart';
import 'package:daleal/features/onboarding/view/widget/onboarding_body.dart';
import 'package:daleal/features/onboarding/view/widget/skip_btn.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int index = 0;
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(child: VerticalSpace(40)),
            const SliverToBoxAdapter(child: SkipButton()),
            const SliverToBoxAdapter(child: VerticalSpace(32)),
            SliverToBoxAdapter(
              child: OnBoardingBody(
                controller: pageController,
                onPageChanged: (index) {
                  this.index = index;
                  setState(() {});
                },
                index: index,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
