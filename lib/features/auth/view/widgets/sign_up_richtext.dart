import 'package:daleal/config/router/app_routes.dart';
import 'package:daleal/core/extention/extentions.dart';
import 'package:daleal/core/utils/widget/rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpCustomRichText extends StatelessWidget {
  const SignUpCustomRichText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomRichText(
      text1: 'Already have an account ?',
      text2: ' Login',
      recognizer: TapGestureRecognizer()
        ..onTap = () {
          context.pushReplacementNamed(AppRoutes.loginPage);
        },
    );
  }
}
