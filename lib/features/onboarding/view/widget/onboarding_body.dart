import 'package:daleal/core/utils/color/app_color.dart';
import 'package:daleal/core/utils/spaceing/spaceing.dart';
import 'package:daleal/core/utils/style/app_textstyle.dart';
import 'package:daleal/features/onboarding/model/pageview_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
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
              SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: const ExpandingDotsEffect(
                  dotColor: AppColor.grey,
                  dotHeight: 6,
                  dotWidth: 10,
                  activeDotColor: AppColor.secondryFilledColor,
                ),
              ),
              const VerticalSpace(32),
              Text(
                pages[index].title,
                style: AppTextStyle.font24MediumPoppinsBlack,
                textAlign: TextAlign.center,
              ),
              const VerticalSpace(16),
              Text(
                pages[index].descreipion,
                style: AppTextStyle.font16LightPoppinsBlack,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
            ],
          );
        },
      ),
    );
  }
}
