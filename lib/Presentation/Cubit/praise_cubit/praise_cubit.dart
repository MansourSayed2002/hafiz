import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'praise_state.dart';

class PraiseCubit extends Cubit<PraiseState> {
  PraiseCubit() : super(PraiseInitial());

  int countpraise = 0;

  increasecounter() {
    countpraise++;

    emit(IncreaseCounter(counter: countpraise));
  }

  counterequalzero() {
    countpraise = 0;
    emit(IncreaseCounter(counter: countpraise));
  }
}
