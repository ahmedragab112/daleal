import 'package:daleal/core/extention/extentions.dart';
import 'package:daleal/core/utils/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.menu,
        ),
        Text(
          'Dalel',
          style: GoogleFonts.pacifico(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: AppColor.primaryOrange),
        )
      ],
    ).setPadding(context, enableMediaQuery: false, horizontal: 16);
  }
}
