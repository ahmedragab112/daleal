import 'dart:developer';

import 'package:daleal/config/router/app_routes.dart';
import 'package:daleal/core/cache/cache_helper.dart';
import 'package:daleal/core/di/service_locator.dart';
import 'package:firebase_auth/firebase_auth.dart';

String getInitRoute() {
  try {

    bool isOnboardingCompleted = locator<CacheHelper>().getBool('onBoarding');
    if (isOnboardingCompleted) {
      User? currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser != null) {
        log('User is already logged in');
        return AppRoutes.home;
      } else {
        log('User is not logged in');
        return AppRoutes.loginPage;
      }
    } else {
    
      return AppRoutes.onBoardingView;
    }
  } catch (e, stackTrace) {
    log('Error in getInitRoute: $e', error: e, stackTrace: stackTrace);
    return AppRoutes.onBoardingView;
  }
}
