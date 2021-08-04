import 'package:get/get.dart';
import 'package:simple_quran_app/data/model/surah_model.dart';
import 'package:simple_quran_app/data/repository/surah_repository.dart';

class HomeController extends GetxController {
  final SurahRepository repository;
  var surahList = List<SurahModel>.empty().obs;
  HomeController({required this.repository});

  getSurahList() async {
    surahList.value = await repository.getAllSurah();
  }
}
