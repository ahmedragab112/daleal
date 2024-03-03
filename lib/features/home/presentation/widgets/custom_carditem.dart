import 'package:daleal/core/utils/color/app_color.dart';
import 'package:daleal/core/utils/spaceing/spaceing.dart';
import 'package:daleal/core/utils/style/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardItem extends StatelessWidget {
  const CustomCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 8,
              offset: const Offset(10, 2),
            )
          ]),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/nap.png',
              fit: BoxFit.fill,
            ),
          ),
          const VerticalSpace(11),
          Text(
            'Pyramid',
            style: AppTextStyle.font16RegularPoppinsBlack
                .copyWith(color: AppColor.secondryFilledColor),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
