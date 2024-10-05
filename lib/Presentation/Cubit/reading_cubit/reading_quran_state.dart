// ignore_for_file: must_be_immutable

part of 'reading_quran_cubit.dart';

@immutable
abstract class ReadingQuranState {}

final class ReadingQuranInitial extends ReadingQuranState {}

class ReadingQuranSuccess extends ReadingQuranState {}
