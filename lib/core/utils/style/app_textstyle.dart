import 'package:daleal/core/utils/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyle {
  static TextStyle font36MeduimPoppinsBlack = GoogleFonts.poppins(
      fontSize: 36.sp, fontWeight: FontWeight.w500, color: Colors.black);
  static TextStyle font16LightPoppinsBlack = GoogleFonts.poppins(
      fontSize: 16.sp, fontWeight: FontWeight.w300, color: Colors.black);
  static TextStyle font16RegularPoppinsBlack = GoogleFonts.poppins(
      fontSize: 16.sp, fontWeight: FontWeight.w400, color: Colors.black);
  static TextStyle font24MediumPoppinsBlack = GoogleFonts.poppins(
      fontSize: 24.sp, fontWeight: FontWeight.w500, color: Colors.black);
  static TextStyle font32BoldSariaWhite = GoogleFonts.saira(
      fontSize: 32.sp, fontWeight: FontWeight.bold, color: Colors.white);
  static TextStyle font24SemiBoldPoppinsaPrimryBlack = GoogleFonts.poppins(
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      color: AppColor.primaryBlack);
  static TextStyle font14RegularPoppinsablack = GoogleFonts.poppins(
      fontSize: 14.sp, fontWeight: FontWeight.w400, color: Colors.black);
  static TextStyle font12RegularPoppinsaGrey = GoogleFonts.poppins(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: AppColor.primaryGrey);
  static TextStyle font12SemiBoldPoppinsaBrown = GoogleFonts.poppins(
      fontSize: 12.sp,
      fontWeight: FontWeight.w600,
      color: AppColor.primaryBrown);
}
