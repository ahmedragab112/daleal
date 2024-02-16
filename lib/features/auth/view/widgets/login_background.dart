import 'package:daleal/core/utils/color/app_color.dart';
import 'package:daleal/core/utils/style/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoginBackGround extends StatelessWidget {
  const LoginBackGround({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 290.h,
          color: AppColor.primaryOrange,
          alignment: Alignment.center,
          child: Text(
            'Dalel',
            style: AppTextStyle.font32BoldSariaWhite,
            textAlign: TextAlign.center,
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: SvgPicture.asset(
            'assets/svg/loginImage1.svg',
            height: 102.h,
            width: 260.w,
            fit: BoxFit.fill,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: SvgPicture.asset(
            'assets/svg/loginImage2.svg',
            height: 128.h,
            width: 176.w,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
