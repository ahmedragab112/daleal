import 'package:daleal/config/router/app_routes.dart';
import 'package:daleal/core/di/service_locator.dart';
import 'package:daleal/features/auth/cubit/auth_cubit.dart';
import 'package:daleal/features/auth/data/repo/auth_repo.dart';
import 'package:daleal/features/auth/view/pages/login.dart';
import 'package:daleal/features/auth/view/pages/sign_up.dart';
import 'package:daleal/features/home/data/repositories/home_repo.dart';
import 'package:daleal/features/home/presentation/cubit/home_cubit.dart';
import 'package:daleal/features/home/presentation/pages/home.dart';
import 'package:daleal/features/onboarding/view/screen/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route<Widget> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.loginPage:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => BlocProvider(
            create: (context) => AuthCubit(authRepo: locator<AuthRepo>()),
            child: const Login(),
          ),
        );
      case AppRoutes.onBoardingView:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const OnBoardingView(),
        );
      case AppRoutes.signUp:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => BlocProvider(
            create: (context) => AuthCubit(authRepo: locator<AuthRepo>()),
            child: const SingUp(),
          ),
        );
      case AppRoutes.home:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) =>  BlocProvider(
            create: (context) => HomeCubit(homeRepo:  locator<HomeRepo>()),
            child:const Home(),
          ),
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
