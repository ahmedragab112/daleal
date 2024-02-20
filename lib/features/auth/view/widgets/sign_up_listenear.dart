import 'package:daleal/config/router/app_routes.dart';
import 'package:daleal/core/extention/extentions.dart';
import 'package:daleal/features/auth/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingUpListener extends StatelessWidget {
  const SingUpListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthError) {
          context.showSnackBar(state.error);
        }
        if (state is AuthSuccess) {
          context.pushReplacementNamed(AppRoutes.home);
        }
        if (state is AuthLoading) {
          const CircularProgressIndicator();
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
