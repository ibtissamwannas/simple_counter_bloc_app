part of 'counter_cubit.dart';

abstract class CounterState {
  final int counter;
  const CounterState({required this.counter});
}

class CounterInitial extends CounterState {
  const CounterInitial({super.counter = 0});
}

class CounterIncrement extends CounterState {
  const CounterIncrement({required super.counter});
}

class CounterDecrement extends CounterState {
  const CounterDecrement({required super.counter});
}
