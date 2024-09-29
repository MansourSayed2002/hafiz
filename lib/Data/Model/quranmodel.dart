import 'package:quran/Data/Model/surahmodel.dart';

class QuranModel {
  int? code;
  String? status;
  List<Surahs>? surahs;

  QuranModel({this.code, this.status, this.surahs});

  QuranModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    if (json['surahs'] != null) {
      surahs = <Surahs>[];
      json['surahs'].forEach((v) {
        surahs!.add(Surahs.fromJson(v));
      });
    }
  }
}
