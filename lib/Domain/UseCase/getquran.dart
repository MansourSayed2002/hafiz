import 'package:quran/Domain/Abstractpre/abstract_getquran.dart';

class UseCaseGetquran {
  UseCaseGetquran(this.abstractGetquranPreo);
  final AbstractGetquranPreo abstractGetquranPreo;

  getquran() async {
    return await abstractGetquranPreo.getDataQuran();
  }
}
