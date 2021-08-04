import 'package:get/get.dart';
import 'package:simple_quran_app/bindings/home_binding.dart';
import 'package:simple_quran_app/bindings/surah_binding.dart';
import 'package:simple_quran_app/routes/routes_name.dart';
import 'package:simple_quran_app/view/home/home_view.dart';
import 'package:simple_quran_app/view/splash/splash_view.dart';
import 'package:simple_quran_app/view/surah/surah_view.dart';

abstract class AppRoutes {
  static final routes = [
    GetPage(
      name: RoutesName.splash,
      page: () => SplashPage(),
    ),
    GetPage(
        name: RoutesName.home, page: () => HomePage(), binding: HomeBinding()),
    GetPage(
        name: RoutesName.surah,
        page: () => SurahPage(),
        binding: SurahBinding()),
  ];
}
