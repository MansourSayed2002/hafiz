// ignore_for_file: must_be_immutable

part of 'reading_quran_cubit.dart';

@immutable
abstract class ReadingQuranState {}

final class ReadingQuranInitial extends ReadingQuranState {}

class ReadingQuranLoading extends ReadingQuranState {
  ReadingQuranLoading(this.ayah, this.quran, this.index, this.namesurah);
  List<AyahsModel> ayah = [];
  List<QuranModel> quran = [];
  var namesurah = '';
  int index = 0;
}
