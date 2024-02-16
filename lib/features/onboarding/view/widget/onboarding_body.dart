import 'package:daleal/core/utils/spaceing/spaceing.dart';
import 'package:daleal/core/utils/style/app_textstyle.dart';
import 'package:daleal/features/onboarding/model/pageview_model.dart';
import 'package:daleal/features/onboarding/view/widget/custom_pageindicator.dart';
import 'package:daleal/features/onboarding/view/widget/pageview_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody(
      {super.key,
      required this.controller,
      this.onPageChanged,
      required this.index});
  final PageController controller;
  final int index;
  final Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700.h,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        physics: const BouncingScrollPhysics(),
        controller: controller,
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SvgPicture.asset(
                pages[index].image,
                height: 290.h,
                width: 340.w,
                fit: BoxFit.fill,
              ),
              const VerticalSpace(24),
              CustomPageIndicator(controller: controller),
              const VerticalSpace(32),
              Text(
                pages[index].title,
                style:
                    AppTextStyle.font24MediumPoppinsBlack.copyWith(height: 1.5),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const VerticalSpace(16),
              Text(
                pages[index].description,
                style: AppTextStyle.font16LightPoppinsBlack.copyWith(height: 1.5),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const VerticalSpace(88),
              PageViewButton(
                controller: controller,
                index: index,
              ),
              const VerticalSpace(16)
            ],
          );
        },
      ),
    );
  }
}
