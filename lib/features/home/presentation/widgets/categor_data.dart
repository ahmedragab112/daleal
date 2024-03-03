import 'package:daleal/core/utils/color/app_color.dart';
import 'package:daleal/core/utils/style/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 96.h, maxWidth: 164.w),
      padding: const EdgeInsets.all(16),
      height: 96.h,
      width: 164.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 8,
            offset: const Offset(10, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Ancient Egypt',
              style: AppTextStyle.font16RegularPoppinsBlack.copyWith(
                  color: AppColor.secondryFilledColor,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Image.asset(
              'assets/images/Pyramid.png',
              width: 47.w,
              height: 68.h,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
