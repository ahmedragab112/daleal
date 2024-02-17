import 'package:daleal/app/daleal.dart';
import 'package:daleal/core/cache/cache_helper.dart';
import 'package:daleal/core/di/service_locator.dart';
import 'package:daleal/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await Future.wait([
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ),
    locator<CacheHelper>().init()
  ]);

  runApp(const Daleal());
}
