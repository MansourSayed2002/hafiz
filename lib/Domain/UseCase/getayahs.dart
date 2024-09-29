import 'package:quran/Domain/Abstractpre/abstract_getquran.dart';

class UseCaseGetayahs {
  UseCaseGetayahs(this.abstractGetquranPreo);
  final AbstractGetquranPreo abstractGetquranPreo;

  getAyahs() async {
    return await abstractGetquranPreo.getDataayah();
  }
}
