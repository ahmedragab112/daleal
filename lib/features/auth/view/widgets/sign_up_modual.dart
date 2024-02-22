import 'package:daleal/core/extention/extentions.dart';
import 'package:daleal/core/helper/app_regex.dart';
import 'package:daleal/core/utils/spaceing/spaceing.dart';
import 'package:daleal/core/utils/widget/custom_textfiled.dart';
import 'package:daleal/features/auth/cubit/auth_cubit.dart';
import 'package:daleal/features/auth/view/widgets/custom_checkbox.dart';
import 'package:daleal/features/auth/view/widgets/password_formfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpModual extends StatelessWidget {
  const SignUpModual({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AuthCubit>().signUpValidationKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomTextFiled(
            lableText: 'FirstName',
            controller:  context.read<AuthCubit>().firstNameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your first name';
              }
              return null;
            },
          ),
          const VerticalSpace(25),
          CustomTextFiled(
            lableText: 'LastName',
            controller:  context.read<AuthCubit>().lastNameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your last name';
              }
              return null;
            },
          ),
          const VerticalSpace(25),
          CustomTextFiled(
            lableText: 'Email Address',
            controller: context.read<AuthCubit>().signUpEmailController,
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
            controller: context.read<AuthCubit>().signUpPasswordController,
          ),
          const VerticalSpace(16),
          const AgreeToOurTerms(),
          const VerticalSpace(72),
        ],
      ).setOnlyPadding(context, enableMediaQuery: false, left: 14, right: 24),
    );
  }
}
