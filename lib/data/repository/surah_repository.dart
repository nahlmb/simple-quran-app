import 'dart:convert';

import 'package:simple_quran_app/data/model/ayah_model.dart';
import 'package:simple_quran_app/data/model/surah_model.dart';
import 'package:simple_quran_app/data/provider/surah_provider.dart';

class SurahRepository {
  final SurahProvider provider;

  SurahRepository({required this.provider});

  Future<List<SurahModel>> getAllSurah() async {
    var response = await provider.getAllSurah();
    var result = jsonDecode(response.body);
    List<SurahModel> list = [];
    (result['data'] as List<dynamic>).forEach((element) {
      list.add(SurahModel(name: element['englishName']));
    });
    return list;
  }

  Future<List<AyahModel>> getSurahById({required int id}) async {
    var response = await provider.getSurahById(id: id);
    List<AyahModel> list = [];
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      print(result['data'][0].runtimeType);
      var texts = (result['data'][0]['ayahs']);
      var translates = (result['data'][1]['ayahs']);

      for (var i = 0; i < texts.length; i++) {
        var text = texts[i]['text'];
        if (i == 0 && id != 1) {
          text = (texts[i]['text'] as String).substring(37);
        }

        list.add(AyahModel(text: text, translation: translates[i]['text']));
      }

      print(list[0].text);
    }
    return list;
  }
}
