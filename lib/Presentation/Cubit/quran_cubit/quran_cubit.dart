import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quran/Data/Model/surahmodel.dart';
import 'package:quran/Domain/UseCase/getquran.dart';
import 'package:quran/core/constant/enum/state_app.dart';

part 'quran_state.dart';

class QuranCubit extends Cubit<QuranState> {
  QuranCubit(this.useCaseGetquran) : super(QuranInitial());

  static QuranCubit get(BuildContext context) {
    return BlocProvider.of(context);
  }

  StatusApp statusApp = StatusApp.none;
  late UseCaseGetquran useCaseGetquran;
  List<Surahs> responsequran = [];
  getsurahs() async {
    statusApp = StatusApp.loading;
    if (responsequran.isEmpty) {
      responsequran = await useCaseGetquran.getquran();
      emit(SurahInitial());
    }
    if (responsequran.isNotEmpty) {
      statusApp = StatusApp.success;
    }
  }
}
