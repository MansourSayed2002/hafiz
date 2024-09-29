class AyahsModel {
  int? number;
  String? text;
  int? numberInSurah;
  int? juz;
  int? manzil;
  int? page;
  int? ruku;
  int? hizbQuarter;

  AyahsModel({
    this.number,
    this.text,
    this.numberInSurah,
    this.juz,
    this.manzil,
    this.page,
    this.ruku,
    this.hizbQuarter,
  });

  AyahsModel.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    text = json['text'];
    numberInSurah = json['numberInSurah'];
    juz = json['juz'];
    manzil = json['manzil'];
    page = json['page'];
    ruku = json['ruku'];
    hizbQuarter = json['hizbQuarter'];
  }
}

// import 'package:json_annotation/json_annotation.dart';

// part 'ayahmodel.g.dart';

// @JsonSerializable()
// class AyahsModel {
//   int? number;
//   String? text;
//   int? numberInSurah;
//   int? juz;
//   int? manzil;
//   int? page;
//   int? ruku;
//   int? hizbQuarter;

//   AyahsModel({
//     this.number,
//     this.text,
//     this.numberInSurah,
//     this.juz,
//     this.manzil,
//     this.page,
//     this.ruku,
//     this.hizbQuarter,
//   });

//   factory AyahsModel.fromJson(Map<String, dynamic> json) =>
//       _$AyahsModelFromJson(json);
// }
