import 'package:get/get.dart';
import 'package:simple_quran_app/controller/home_controller.dart';
import 'package:simple_quran_app/data/provider/surah_provider.dart';
import 'package:simple_quran_app/data/repository/surah_repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(
        HomeController(repository: SurahRepository(provider: SurahProvider())));
  }
}
