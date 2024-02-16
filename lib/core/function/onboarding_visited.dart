import 'package:daleal/core/cache/cache_helper.dart';
import 'package:daleal/core/di/service_locator.dart';

Future<void> onBoardingVisited() async{
 await locator<CacheHelper>().setBool('onBoarding', true);
}