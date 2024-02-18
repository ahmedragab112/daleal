import 'package:daleal/core/utils/widget/custom_btn.dart';
import 'package:daleal/features/auth/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomPrimaryButton extends StatelessWidget {
  const CustomPrimaryButton({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      txt: text,
      onTap: () {
        context.read<AuthCubit>().signUp();
      },
    );
  }
}
