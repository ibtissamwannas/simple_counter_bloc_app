import 'package:bloc/bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial()) {
    on<Increment>(_increment);
    on<Decrement>(_decrement);
  }

  void _increment(Increment event, Emitter<CounterState> emit) {
    emit(CounterIncrement(counter: state.counter + 1));
  }

  void _decrement(Decrement event, Emitter<CounterState> emit) {
    emit(CounterDecrement(counter: state.counter - 1));
  }
}
