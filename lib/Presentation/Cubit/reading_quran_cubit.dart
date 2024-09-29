import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:quran/Data/Model/ayahmodel.dart';
import 'package:quran/Data/Model/quranmodel.dart';
import 'package:quran/Domain/UseCase/getayahs.dart';
import 'package:quran/Domain/UseCase/getquran.dart';

part 'reading_quran_state.dart';

class ReadingQuranCubit extends Cubit<ReadingQuranState> {
  ReadingQuranCubit(this.useCaseGetayahs, this.useCaseGetquran)
      : super(ReadingQuranInitial());
  late UseCaseGetayahs useCaseGetayahs;
  late UseCaseGetquran useCaseGetquran;
  List<AyahsModel> responseayah = [];
  List<QuranModel> responsequran = [];
  late PageController pageController = PageController();
  int currentindex = 0;
  var name = '';

  getayahs() async {
    responseayah = await useCaseGetayahs.getAyahs();
    responsequran = await useCaseGetquran.getquran();
    print(responsequran);
    emit(ReadingQuranLoading(responseayah, responsequran, currentindex, name));
  }

  getindex(index) {
    currentindex = index;
    emit(ReadingQuranLoading(responseayah, responsequran, currentindex, name));
  }

  getnamesurah(namesurah) {
    name = namesurah;
    emit(ReadingQuranLoading(responseayah, responsequran, currentindex, name));
  }
}
