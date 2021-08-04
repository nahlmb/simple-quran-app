import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_quran_app/routes/routes_name.dart';
import 'package:simple_quran_app/routes/app_routes.dart';
import 'package:simple_quran_app/utils/app_theme.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: appTheme,
    darkTheme: appDarkTheme,
    initialRoute: RoutesName.splash,
    themeMode: ThemeMode.light,
    defaultTransition: Transition.fadeIn,
    getPages: AppRoutes.routes,
  ));
}
