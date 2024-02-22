import 'package:daleal/core/utils/style/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.txt, required this.onTap});
  final String txt;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60.h,
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          txt,
          style: AppTextStyle.font16LightPoppinsBlack.copyWith(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
