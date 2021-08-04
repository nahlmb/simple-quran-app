import 'package:get/get.dart';
import 'package:simple_quran_app/controller/surah_controller.dart';
import 'package:simple_quran_app/data/provider/surah_provider.dart';
import 'package:simple_quran_app/data/repository/surah_repository.dart';

class SurahBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SurahController(
        repository: SurahRepository(provider: SurahProvider())));
  }
}
