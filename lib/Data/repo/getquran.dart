import 'package:quran/Data/Api/quran_api.dart';
import 'package:quran/Data/Model/ayahmodel.dart';
import 'package:quran/Data/Model/surahmodel.dart';
import 'package:quran/Domain/Abstractpre/abstract_getquran.dart';

class GetquranRepo extends AbstractGetquranPreo {
  final QuranApi quranApi;
  GetquranRepo({required this.quranApi});
  @override
  getDataQuran() async {
    var response = await quranApi.getquran();
    List data = [];
    List<Surahs> qurans = [];
    data.addAll(response['data']['surahs']);
    qurans.addAll(data.map((e) => Surahs.fromJson(e)));
    return qurans;
  }

  @override
  getDataayah() async {
    var response = await quranApi.getquran();
    List data = [];
    List<AyahsModel> ayah = [];
    for (var e in response['data']['surahs']) {
      data.addAll(e['ayahs']);
    }
    ayah.addAll(data.map((e) => AyahsModel.fromJson(e)));
    return ayah;
  }
}
