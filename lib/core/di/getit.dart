import 'package:get_it/get_it.dart';

import 'package:quran/Data/Api/quran_api.dart';
import 'package:quran/Data/repo/getquran.dart';
import 'package:quran/Domain/Abstractpre/abstract_getquran.dart';
import 'package:quran/Domain/UseCase/getayahs.dart';
import 'package:quran/Domain/UseCase/getquran.dart';
import 'package:quran/Presentation/Cubit/home_cubit/home_cubit.dart';
import 'package:quran/Presentation/Cubit/praise_cubit/praise_cubit.dart';
import 'package:quran/Presentation/Cubit/quran_cubit/quran_cubit.dart';
import 'package:quran/Presentation/Cubit/reading_cubit/reading_quran_cubit.dart';
import 'package:quran/core/class/Crud.dart';

final getit = GetIt.instance;

Future<void> setupgetit() async {
  Crud crud = Crud.instanse;

  getit.registerLazySingleton<QuranApi>(() => QuranApi(crud: crud));
  getit.registerLazySingleton<AbstractGetquranPreo>(
      () => GetquranRepo(quranApi: getit()));
  getit.registerLazySingleton<UseCaseGetayahs>(() => UseCaseGetayahs(getit()));
  getit.registerLazySingleton<UseCaseGetquran>(() => UseCaseGetquran(getit()));
  getit.registerLazySingleton<ReadingQuranCubit>(
      () => ReadingQuranCubit(getit(), getit()));
  getit.registerLazySingleton<QuranCubit>(() => QuranCubit(getit()));
  getit.registerLazySingleton<PraiseCubit>(() => PraiseCubit());
  getit.registerLazySingleton<HomeCubit>(() => HomeCubit());
}
