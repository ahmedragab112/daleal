import 'package:daleal/core/extention/extentions.dart';
import 'package:daleal/core/helper/app_regex.dart';
import 'package:daleal/core/utils/color/app_color.dart';
import 'package:daleal/core/utils/spaceing/spaceing.dart';
import 'package:daleal/core/utils/style/app_textstyle.dart';
import 'package:daleal/core/utils/widget/custom_btn.dart';
import 'package:daleal/core/utils/widget/custom_textfiled.dart';
import 'package:daleal/features/auth/cubit/auth_cubit.dart';
import 'package:daleal/features/auth/view/widgets/custom_page_indcator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<AuthCubit>();
    return SizedBox(
      
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Forgot Password',
            style: AppTextStyle.font24MediumPoppinsBlack,
          ),
          const VerticalSpace(8),
          Image.asset(
            'assets/images/forgotpassword.png',
            height: 200.h,
            width: 200.w,
            fit: BoxFit.fill,
          ),
          const VerticalSpace(8),
          Text(
            "Enter your registered email below to receive password reset instruction",
            style: AppTextStyle.font12RegularPoppinsaGrey
                .copyWith(color: AppColor.primaryOrange, fontSize: 16.sp),
            textAlign: TextAlign.center,
          ),
          const VerticalSpace(16),
          Form(
            key: bloc.forgotPasswordValidationKey,
            child: CustomTextFiled(
              lableText: 'Email',
              controller:
                  context.read<AuthCubit>().forgotPasswordEmailController,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    AppRegex.isEmailValid(value) == false) {
                  return 'Please enter a valid email';
                }
                return null;
              },
            ),
          ),
          const VerticalSpace(16),
          CustomButton(
            txt: 'Reset Password',
            onTap: () async {
              if (bloc.forgotPasswordValidationKey.currentState!.validate()) {
                await context.read<AuthCubit>().resetPassword();
              }
            },
          ),
          const CustomBlocListener(),
        ],
      ).setOnlyPadding(
        context,
        enableMediaQuery: false,
        left: 8.w,
        right: 18.w,
        top: 8.h,
        bottom: 8.h,
      ),
    );
  }
}
