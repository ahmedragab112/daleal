import 'package:daleal/core/utils/spaceing/spaceing.dart';
import 'package:daleal/features/auth/view/widgets/custom_page_indcator.dart';
import 'package:daleal/features/auth/view/widgets/login_button.dart';
import 'package:daleal/features/auth/view/widgets/sign_up_modual.dart';
import 'package:daleal/features/auth/view/widgets/sign_up_richtext.dart';
import 'package:daleal/features/auth/view/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: VerticalSpace(108),
            ),
            SliverToBoxAdapter(child: WelcomeText()),
            SliverToBoxAdapter(
              child: VerticalSpace(48),
            ),
            SliverToBoxAdapter(child: SignUpModual()),
            SliverToBoxAdapter(
              child: CustomPrimaryButton(
                text: 'Sign Up',
              ),
            ),
            SliverToBoxAdapter(
              child: SignUpCustomRichText(),
            ),
            SliverToBoxAdapter(
              child: CustomBlocListener(),
            )
          ],
        ),
      ),
    );
  }
}

