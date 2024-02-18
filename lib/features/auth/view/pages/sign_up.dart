import 'package:daleal/core/extention/extentions.dart';
import 'package:daleal/core/utils/spaceing/spaceing.dart';
import 'package:daleal/core/utils/style/app_textstyle.dart';
import 'package:daleal/core/utils/widget/custom_textfiled.dart';
import 'package:daleal/features/auth/cubit/auth_cubit.dart';
import 'package:daleal/features/auth/view/widgets/custom_checkbox.dart';
import 'package:daleal/features/auth/view/widgets/login_button.dart';
import 'package:daleal/features/auth/view/widgets/password_formfiled.dart';
import 'package:daleal/features/auth/view/widgets/sign_up_richtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: VerticalSpace(108),
            ),
            SliverToBoxAdapter(
              child: Text(
                'Welcome !',
                style: AppTextStyle.font28SemiBoldPoppinsaBlack,
                textAlign: TextAlign.center,
              ),
            ),
            const SliverToBoxAdapter(
              child: VerticalSpace(48),
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomTextFiled(
                    lableText: 'FirstName',
                    controller: TextEditingController(),
                  ),
                  const VerticalSpace(25),
                  CustomTextFiled(
                    lableText: 'LastName',
                    controller: TextEditingController(),
                  ),
                  const VerticalSpace(25),
                  CustomTextFiled(
                    lableText: 'Email Address',
                    controller: context.read<AuthCubit>().signUpEmailController,
                  ),
                  const VerticalSpace(25),
                  PasswordFormFiled(
                    controller:
                        context.read<AuthCubit>().signUpPasswordController,
                  ),
                  const VerticalSpace(16),
                  const AgreeToOurTerms(),
                  const VerticalSpace(72),
                ],
              ).setOnlyPadding(context,
                  enableMediaQuery: false, left: 14, right: 24),
            ),
            SliverToBoxAdapter(
              child: const CustomPrimaryButton(
                text: 'Sign Up',
              ).setAllPadding(16),
            ),
            const SliverToBoxAdapter(
              child: SignUpCustomRichText(),
            )
          ],
        ),
      ),
    );
  }
}
