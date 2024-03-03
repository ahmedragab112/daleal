import 'package:daleal/core/extention/extentions.dart';
import 'package:daleal/core/utils/spaceing/spaceing.dart';
import 'package:daleal/features/home/presentation/widgets/custom_hometitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Image.asset(
          'assets/images/Pyramid.png',
          width: 145.w,
          height: 145.h,
          fit: BoxFit.fill,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomHomeTitle(text: ''),
            VerticalSpace(47),
            
          ],
        ).setPadding(context, enableMediaQuery: false, horizontal: 14),
      ],
    );
  }
}
