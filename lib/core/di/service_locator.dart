import 'package:daleal/core/cache/cache_helper.dart';
import 'package:daleal/core/firebase/firebase_webservicse.dart';
import 'package:daleal/features/auth/cubit/auth_cubit.dart';
import 'package:daleal/features/auth/data/repo/auth_repo.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<CacheHelper>(() => CacheHelper());
  locator.registerLazySingleton<FireBaseWebservicse>(() => FireBaseWebservicse());
  
  locator
      .registerLazySingleton<AuthRepo>(() => AuthRepo(webservicse: locator()));
  locator.registerFactory<AuthCubit>(() => AuthCubit(authRepo: locator()));
}
