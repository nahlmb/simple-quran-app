import 'package:get/get.dart';
import 'package:http/http.dart' as http;

const baseUrl = 'http://api.alquran.cloud/v1/surah';

class SurahProvider extends GetConnect {
  Future<http.Response> getAllSurah() => http.get(Uri.parse(baseUrl));
  Future<http.Response> getSurahById({required int id}) =>
      http.get(Uri.parse('$baseUrl/$id/editions/quran-uthmani,en.sahih'));
}
