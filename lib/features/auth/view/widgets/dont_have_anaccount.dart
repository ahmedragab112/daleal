import 'package:daleal/config/router/app_routes.dart';
import 'package:daleal/core/extention/extentions.dart';
import 'package:daleal/core/utils/widget/rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DtHaveAnAccountWidget extends StatelessWidget {
  const DtHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomRichText(
      text1: 'Don’t have an account ?',
      text2: ' Sign Up',
      recognizer: TapGestureRecognizer()
        ..onTap = () {
          context.pushReplacementNamed(AppRoutes.signUp);
        },
    );
  }
}
