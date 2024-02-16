import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyle {
  static TextStyle font36MeduimPoppinsBlack = GoogleFonts.poppins(
      fontSize: 36, fontWeight: FontWeight.w500, color: Colors.black);
  static TextStyle font16LightPoppinsBlack = GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w300, color: Colors.black);
  static TextStyle font16RegularPoppinsBlack = GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black);
  static TextStyle font24MediumPoppinsBlack = GoogleFonts.poppins(
      fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black);
}
