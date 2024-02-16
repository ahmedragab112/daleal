import 'package:daleal/core/cache/cache_helper.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<CacheHelper>(() => CacheHelper());
}