import 'package:daleal/core/extention/extentions.dart';
import 'package:daleal/core/utils/spaceing/spaceing.dart';
import 'package:daleal/features/home/presentation/widgets/categor_data.dart';
import 'package:daleal/features/home/presentation/widgets/custom_carditem.dart';
import 'package:daleal/features/home/presentation/widgets/custom_hometitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeModual extends StatelessWidget {
  const HomeModual({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomHomeTitle(
          text: 'Historical periods',
        ),
        const VerticalSpace(16),
        SizedBox(
          height: 96.h,
          child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const Category(),
              separatorBuilder: (context, index) => const HorizantelSpace(16),
              itemCount: 10),
        ),
        const VerticalSpace(32),
        const CustomHomeTitle(
          text: 'Historical Characters',
        ),
        const VerticalSpace(16),
        SizedBox(
          height: 133.h,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const CustomCardItem(),
            separatorBuilder: (context, index) => const HorizantelSpace(16),
            itemCount: 10,
          ),
        ),
        const VerticalSpace(32),
        const CustomHomeTitle(
          text: 'Historical Souvenirs',
        ),
        const VerticalSpace(16),
        SizedBox(
          height: 133.h,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const CustomCardItem(),
            separatorBuilder: (context, index) => const HorizantelSpace(16),
            itemCount: 10,
          ),
        ),
      ],
    ).setPadding(context, enableMediaQuery: false, horizontal: 14);
  }
}
