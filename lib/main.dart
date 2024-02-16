import 'package:daleal/app/daleal.dart';
import 'package:daleal/core/cache/cache_helper.dart';
import 'package:daleal/core/di/service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await locator<CacheHelper>().init();
  runApp(const Daleal());
}
