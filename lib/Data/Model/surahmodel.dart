import 'package:quran/Data/Model/ayahmodel.dart';

class Surahs {
  int? number;
  String? name;
  String? englishName;
  String? englishNameTranslation;
  String? revelationType;
  List<AyahsModel>? ayahs;

  Surahs({
    this.number,
    this.name,
    this.englishName,
    this.englishNameTranslation,
    this.revelationType,
    this.ayahs,
  });

  Surahs.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    name = json['name'];
    englishName = json['englishName'];
    englishNameTranslation = json['englishNameTranslation'];
    revelationType = json['revelationType'];
    if (json['ayahs'] != null) {
      ayahs = <AyahsModel>[];
      json['ayahs'].forEach((v) {
        ayahs!.add(AyahsModel.fromJson(v));
      });
    }
  }
}
