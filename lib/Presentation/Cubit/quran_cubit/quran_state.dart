part of 'quran_cubit.dart';

@immutable
sealed class QuranState {}

final class QuranInitial extends QuranState {}

class SurahInitial extends QuranState {}
