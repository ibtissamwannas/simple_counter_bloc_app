part of 'counter_bloc.dart';

sealed class CounterState {
  final int counter;
  const CounterState({required this.counter});
}

final class CounterInitial extends CounterState {
  const CounterInitial({super.counter = 0});
}

class CounterIncrement extends CounterState {
  const CounterIncrement({required super.counter});
}

class CounterDecrement extends CounterState {
  const CounterDecrement({required super.counter});
}
