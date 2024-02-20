import 'package:daleal/core/utils/spaceing/spaceing.dart';
import 'package:daleal/features/auth/view/widgets/custom_page_indcator.dart';
import 'package:daleal/features/auth/view/widgets/dont_have_anaccount.dart';
import 'package:daleal/features/auth/view/widgets/login_background.dart';
import 'package:daleal/features/auth/view/widgets/login_modual.dart';
import 'package:daleal/features/auth/view/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        physics: NeverScrollableScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: LoginBackGround(),
          ),
          SliverToBoxAdapter(
            child: VerticalSpace(32),
          ),
          SliverToBoxAdapter(child: WelcomeText()),
          SliverToBoxAdapter(
            child: VerticalSpace(48),
          ),
          SliverToBoxAdapter(
            child: LoginModual(),
          ),
          SliverToBoxAdapter(
            child: VerticalSpace(16),
          ),
          SliverToBoxAdapter(
            child: DtHaveAnAccountWidget(),
          ),
          SliverToBoxAdapter(
            child: CustomBlocListener(),
          ),
          SliverToBoxAdapter(
            child: VerticalSpace(18),
          ),
        ],
      ),
    );
  }
}
