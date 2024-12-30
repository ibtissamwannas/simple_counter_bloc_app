import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterInitial());

  void increment() => emit(CounterIncrement(counter: state.counter + 1));

  void decrement() => emit(CounterIncrement(counter: state.counter - 1));
}
