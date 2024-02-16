import 'package:daleal/config/router/app_routes.dart';
import 'package:daleal/features/auth/presentation/pages/login.dart';
import 'package:daleal/features/onboarding/view/screen/onboarding_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<Widget> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.loginPage:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const Login(),
        );
          case AppRoutes.onBoardingView:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const OnBoardingView(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const MaterialApp(
            home: Scaffold(
              body: Center(
                child: Text('there is no route'),
              ),
            ),
          ),
        );
    }
  }
}
