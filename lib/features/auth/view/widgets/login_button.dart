import 'package:daleal/core/extention/extentions.dart';
import 'package:daleal/core/utils/widget/custom_btn.dart';
import 'package:daleal/features/auth/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomPrimarySignUpButton extends StatelessWidget {
  const CustomPrimarySignUpButton({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      txt: text,
      onTap: () {
        if (context
            .read<AuthCubit>()
            .signUpValidationKey
            .currentState!
            .validate()) {
          context.read<AuthCubit>().signUp();
        }
      },
    ).setAllPadding(16);
  }
}
