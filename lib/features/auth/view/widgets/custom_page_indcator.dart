import 'package:daleal/config/router/app_routes.dart';
import 'package:daleal/core/extention/extentions.dart';
import 'package:daleal/core/utils/color/app_color.dart';
import 'package:daleal/core/utils/style/app_textstyle.dart';
import 'package:daleal/features/auth/cubit/auth_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:motion_toast/motion_toast.dart';

class CustomBlocListener extends StatelessWidget {
  const CustomBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (BuildContext context, state) {
        if (state is AuthError) {
          MotionToast.error(
            title: Text(
              "An Error Occurred",
              style: AppTextStyle.font16RegularPoppinsBlack,
              textAlign: TextAlign.center,
            ),
            description: Text(
              state.error,
              style: AppTextStyle.font14RegularPoppinsablack,
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
            animationType: AnimationType.fromTop,
            animationCurve: Curves.easeIn,
          ).show(context);
        } else if (state is AuthSuccess) {
          MotionToast.success(
            title: Text(
              "Success",
              style: AppTextStyle.font16RegularPoppinsBlack,
              textAlign: TextAlign.center,
            ),
            description: Text(
              "Welcome ${FirebaseAuth.instance.currentUser!.email!}",
              style: AppTextStyle.font14RegularPoppinsablack,
              textAlign: TextAlign.center,
            ),
            animationType: AnimationType.fromTop,
            animationCurve: Curves.easeIn,
          ).show(context);
          context.pushReplacementNamed(AppRoutes.home);
        } else if (state is AuthLoading) {
          const Center(
            child: CircularProgressIndicator(
              color: AppColor.primaryOrange,
            ),
          );
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
