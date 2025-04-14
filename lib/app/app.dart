
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/styles/app_theme.dart';
import '../routs.dart';

class MyApp extends StatelessWidget {

  static final MyApp _instance = MyApp._internal();

  factory MyApp() => _instance;

  const MyApp._internal();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      initialRoute: '/',
      getPages: getPages,
    );
  }
}
