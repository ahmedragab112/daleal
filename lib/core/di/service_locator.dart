import 'package:daleal/core/cache/cache_helper.dart';
import 'package:daleal/core/firebase/firebase_webservicse.dart';
import 'package:daleal/features/auth/cubit/auth_cubit.dart';
import 'package:daleal/features/auth/data/repo/auth_repo.dart';
import 'package:daleal/features/home/data/repositories/home_repo.dart';
import 'package:daleal/features/home/presentation/cubit/home_cubit.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<CacheHelper>(() => CacheHelper());
  locator
      .registerLazySingleton<FireBaseWebservicse>(() => FireBaseWebservicse());
  //Auth Injection
  locator
      .registerLazySingleton<AuthRepo>(() => AuthRepo(webservicse: locator()));
  locator.registerFactory<AuthCubit>(() => AuthCubit(authRepo: locator()));

  //Home Injection
  locator.registerLazySingleton(() => HomeRepo(webservicse: locator()));
  locator.registerFactory(() => HomeCubit(homeRepo: locator()));
}
