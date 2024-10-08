import 'package:quran/core/class/Crud.dart';
import 'package:quran/core/constant/links/links.dart';

class QuranApi {
  QuranApi({required this.crud});
  final Crud crud;

  getquran() async {
    var response = await crud.getrequest(LinksApp.quran);
    return response;
  }
}
