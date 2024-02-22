import 'package:daleal/core/utils/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: const Color(0xffF4F4F4),
      primaryColor: AppColor.primaryOrange,
      brightness: Brightness.light,
      buttonTheme: ButtonThemeData(
        buttonColor: AppColor.primaryOrange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        minWidth: 200.w,
      ),
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: AppColor.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: AppColor.grey),
        ),
        isDense: true,
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: Colors.red),
        ),
        suffixIconColor: AppColor.primaryOrange,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primaryOrange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      )),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: const BorderSide(color: AppColor.primaryOrange),
        ),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
          ),
          side: BorderSide(color: AppColor.primaryOrange),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        unselectedIconTheme:
            IconThemeData(color: AppColor.secondryOutlineColor),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColor.primaryOrange,
        elevation: 0.0,
        selectedIconTheme: IconThemeData(color: AppColor.secondryFilledColor),
      ));
  static ThemeData darkTheme = ThemeData();
}
