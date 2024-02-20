import 'package:daleal/core/extention/extentions.dart';
import 'package:daleal/core/helper/app_regex.dart';
import 'package:daleal/core/utils/spaceing/spaceing.dart';
import 'package:daleal/core/utils/widget/custom_textfiled.dart';
import 'package:daleal/features/auth/cubit/auth_cubit.dart';
import 'package:daleal/features/auth/view/widgets/forgot_password_text.dart';
import 'package:daleal/features/auth/view/widgets/password_formfiled.dart';
import 'package:daleal/features/auth/view/widgets/primery_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginModual extends StatelessWidget {
  const LoginModual({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AuthCubit>().loginValidationKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomTextFiled(
            lableText: 'Email Address',
            controller: context.read<AuthCubit>().loginEmailController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  AppRegex.isEmailValid(value) == false) {
                return 'Please enter a valid email';
              }
              return null;
            },
          ),
          const VerticalSpace(25),
          PasswordFormFiled(
            controller: context.read<AuthCubit>().loginPasswordController,
          ),
          const VerticalSpace(16),
          const ForgotPasswordText(),
          const VerticalSpace(80),
          const CustomPrimaryLoginButton(
            text: 'Login',
          ),
        ],
      ).setPadding(context, enableMediaQuery: false, horizontal: 16.w),
    );
  }
}
