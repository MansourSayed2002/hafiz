part of 'praise_cubit.dart';

@immutable
abstract class PraiseState {}

final class PraiseInitial extends PraiseState {}

class IncreaseCounter extends PraiseState {
  IncreaseCounter({
    required this.counter,
  });
  final int counter;
}
