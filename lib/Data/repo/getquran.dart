import 'package:quran/Data/Api/quran_api.dart';
import 'package:quran/Data/Model/ayahmodel.dart';
import 'package:quran/Data/Model/quranmodel.dart';
import 'package:quran/Domain/Abstractpre/abstract_getquran.dart';

class GetquranRepo extends AbstractGetquranPreo {
  final QuranApi quranApi;
  GetquranRepo({required this.quranApi});
  @override
  getDataQuran() async {
    var response = await quranApi.getquran();
    List data = [];
    List<QuranModel> qurans = [];
    
    data.add(response);
    qurans.addAll(data.map((e) => QuranModel.fromJson(e)));
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
