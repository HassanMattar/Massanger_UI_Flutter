
import 'package:flutter_application_1/modules/Counter/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterIntState());
  int counter = 1;

  static CounterCubit get(context) {
    return BlocProvider.of(context);
  }

  void minus() {
    counter--;
    emit(Plus());
  }

  void plus() {
    counter++;
     emit(Minus());
  }
}