import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quran/Data/Model/ayahmodel.dart';
import 'package:quran/Data/Model/surahmodel.dart';
import 'package:quran/Domain/UseCase/getayahs.dart';
import 'package:quran/Domain/UseCase/getquran.dart';
import 'package:quran/core/constant/enum/state_app.dart';
import 'package:quran/core/function/handling_data.dart';
import 'package:quran/core/function/sharedpre.dart';
part 'reading_quran_state.dart';

class ReadingQuranCubit extends Cubit<ReadingQuranState> {
  ReadingQuranCubit(this.useCaseGetquran, this.useCaseGetayahs)
      : super(ReadingQuranInitial());
  late UseCaseGetquran useCaseGetquran;
  late UseCaseGetayahs useCaseGetayahs;
  late PageController pageController;

  int currentindex = 0;
  StatusApp statusApp = StatusApp.none;
  String? namesurah;
  List<Surahs> quran = [];
  List<AyahsModel> ayah = [];

  static ReadingQuranCubit get(BuildContext context) {
    return BlocProvider.of(context);
  }

  getdata() async {
    emit(OfflineStatus());
    quran.clear();
    ayah.clear();
    statusApp = StatusApp.loading;
    pageController = PageController(initialPage: currentindex);
    var responseQuran = await useCaseGetquran.getquran();
    var responseAyah = await useCaseGetayahs.getAyahs();
    statusApp = handlingData(responseQuran);
    if (statusApp == StatusApp.success) {
      quran.addAll(responseQuran);
      ayah.addAll(responseAyah);
      getnamesurah(currentindex + 1);
      addSharedprestring('namesurah', namesurah);
    }
    emit(ReadingQuranSuccess());
  }

  getnamesurah(page) async {
    for (var i = 0; i <= quran.length - 1; i++) {
      for (var w = 0; w <= quran[i].ayahs!.length - 1; w++) {
        if (quran[i].ayahs![w].page == page) {
          namesurah = quran[i].name!;
        }
      }
    }
  }

  getindex(int index) {
    if (currentindex != index) {
      currentindex = index;
      emit(ReadingQuranSuccess());
    }
  }
}
