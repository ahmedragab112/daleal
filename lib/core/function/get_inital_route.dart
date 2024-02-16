import 'package:daleal/config/router/app_routes.dart';
import 'package:daleal/core/cache/cache_helper.dart';
import 'package:daleal/core/di/service_locator.dart';

String getInitRoute(){
 if (locator<CacheHelper>().getBool('onBoarding') == true) {
   return AppRoutes.loginPage;
 } 
 else{
  return AppRoutes.onBoardingView;
 }
}