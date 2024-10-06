import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quran/core/function/sharedpre.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(BuildContext context) {
    return BlocProvider.of(context);
  }

  String namesurah = 'surah';

  getdata() {
    namesurah = searchsharedprestring('namesurah');
    emit(HomeInitial());
  }
}
