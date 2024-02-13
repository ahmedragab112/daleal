import 'package:daleal/config/router/app_router.dart';
import 'package:daleal/config/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Daleal extends StatelessWidget {
  const Daleal({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.loginPage,
      onGenerateRoute: AppRouter.onGenerateRoutes,
    );
  }
}
