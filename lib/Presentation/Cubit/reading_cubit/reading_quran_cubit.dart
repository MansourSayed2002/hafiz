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
  List<Surahs> responsequran = [];
  List<AyahsModel> ayah = [];
  bool isnavigationbar = false;

  static ReadingQuranCubit get(BuildContext context) {
    return BlocProvider.of(context);
  }

  getdata() async {
    pageController = PageController(initialPage: currentindex);
    if (responsequran.isEmpty && ayah.isEmpty) {
      statusApp = StatusApp.loading;
      responsequran = await useCaseGetquran.getquran();
      ayah = await useCaseGetayahs.getAyahs();
      if (responsequran.isNotEmpty && ayah.isNotEmpty) {
        statusApp = StatusApp.success;
        emit(ReadingQuranSuccess());
      } else {
        statusApp = StatusApp.failure;
      }
    }
    getnamesurah(currentindex + 1);
    addSharedprestring('namesurah', namesurah);
  }

  getnamesurah(page) async {
    for (var i = 0; i <= responsequran.length - 1; i++) {
      for (var w = 0; w <= responsequran[i].ayahs!.length - 1; w++) {
        if (responsequran[i].ayahs![w].page == page) {
          namesurah = responsequran[i].name!;
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

  navigationbar() {
    isnavigationbar == true ? isnavigationbar = false : isnavigationbar = true;
    emit(ReadingQuranSuccess());
  }
}
