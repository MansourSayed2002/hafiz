import 'package:quran/Data/Model/surahmodel.dart';

class QuranModel {
  int? code;
  String? status;
  Data? data;

  QuranModel({this.code, this.status, this.data});

  QuranModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
}

class Data {
  List<Surahs>? surahs;

  Data({this.surahs});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['surahs'] != null) {
      surahs = <Surahs>[];
      json['surahs'].forEach((v) {
        surahs!.add(Surahs.fromJson(v));
      });
    }
  }
}
