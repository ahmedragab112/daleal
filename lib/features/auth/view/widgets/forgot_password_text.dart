

import 'package:daleal/core/utils/color/app_color.dart';
import 'package:daleal/core/utils/style/app_textstyle.dart';
import 'package:flutter/material.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Forgot Password ?',
      textAlign: TextAlign.end,
      style: AppTextStyle.font12RegularPoppinsaGrey
          .copyWith(fontWeight: FontWeight.w600, color: AppColor.primaryBrown),
    );
  }
}
