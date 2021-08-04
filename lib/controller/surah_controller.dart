import 'package:get/get.dart';
import 'package:simple_quran_app/data/model/ayah_model.dart';
import 'package:simple_quran_app/data/model/surah_model.dart';
import 'package:simple_quran_app/data/repository/surah_repository.dart';

class SurahController extends GetxController {
  final SurahRepository repository;
  var surahList = List<SurahModel>.empty().obs;
  var surah = List<AyahModel>.empty().obs;

  SurahController({required this.repository});

  getSurahList() async {
    surahList.value = await repository.getAllSurah();
  }

  getSurahById(String? id) async {
    if (id != null) {
      var parse = int.tryParse(id);
      if (parse != null) {
        surah.value = await repository.getSurahById(id: parse);
      }
    }
  }
}
