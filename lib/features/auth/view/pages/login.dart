import 'package:daleal/core/extention/extentions.dart';
import 'package:daleal/core/utils/spaceing/spaceing.dart';
import 'package:daleal/core/utils/widget/custom_textfiled.dart';
import 'package:daleal/features/auth/cubit/auth_cubit.dart';
import 'package:daleal/features/auth/view/widgets/custom_page_indcator.dart';
import 'package:daleal/features/auth/view/widgets/dont_have_anaccount.dart';
import 'package:daleal/features/auth/view/widgets/forgot_password_text.dart';
import 'package:daleal/features/auth/view/widgets/login_background.dart';
import 'package:daleal/features/auth/view/widgets/login_button.dart';
import 'package:daleal/features/auth/view/widgets/password_formfiled.dart';
import 'package:daleal/features/auth/view/widgets/welcome_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(child: LoginBackGround()),
            const SliverToBoxAdapter(child: VerticalSpace(32)),
            const SliverToBoxAdapter(child: WelcomeText()),
            const SliverToBoxAdapter(child: VerticalSpace(48)),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomTextFiled(
                    lableText: 'Email Address',
                    controller: context.read<AuthCubit>().loginEmailController,
                  ),
                  const VerticalSpace(25),
                  PasswordFormFiled(
                    controller:
                        context.read<AuthCubit>().loginPasswordController,
                  ),
                  const VerticalSpace(16),
                  const ForgotPasswordText(),
                  const VerticalSpace(102),
                  const CustomPrimaryButton(
                    text: 'Login',
                  ),
                ],
              ).setPadding(context, enableMediaQuery: false, horizontal: 16),
            ),
            const SliverToBoxAdapter(
              child: VerticalSpace(16),
            ),
            const SliverToBoxAdapter(
              child: DtHaveAnAccountWidget(),
            ),
            const SliverToBoxAdapter(
              child: CustomBlocListener(),
            )
          ],
        ),
      ),
    );
  }
}
