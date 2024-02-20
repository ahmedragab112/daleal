import 'package:daleal/core/di/service_locator.dart';
import 'package:daleal/core/utils/color/app_color.dart';
import 'package:daleal/core/utils/style/app_textstyle.dart';
import 'package:daleal/features/auth/cubit/auth_cubit.dart';
import 'package:daleal/features/auth/data/repo/auth_repo.dart';
import 'package:daleal/features/auth/view/widgets/forgot_password_bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18), topRight: Radius.circular(18)),
            ),
            builder: (context) => BlocProvider(
                  create: (context) => AuthCubit(authRepo: locator<AuthRepo>()),
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: const ForgotPasswordWidget(),
                  ),
                ));
      },
      child: Text(
        'Forgot Password ?',
        textAlign: TextAlign.end,
        style: AppTextStyle.font12RegularPoppinsaGrey.copyWith(
            fontWeight: FontWeight.w600, color: AppColor.primaryBrown),
      ),
    );
  }
}
