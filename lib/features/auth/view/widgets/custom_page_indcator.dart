import 'package:daleal/config/router/app_routes.dart';
import 'package:daleal/core/extention/extentions.dart';
import 'package:daleal/features/auth/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBlocListener extends StatelessWidget {
  const CustomBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (BuildContext context, state) {
        if (state is AuthError) {
          context.showSnackBar(state.error);
        } else if (state is AuthSuccess) {
          context.pushReplacementNamed(AppRoutes.home);
        } else if (state is AuthLoading) {
          const CircularProgressIndicator();
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
