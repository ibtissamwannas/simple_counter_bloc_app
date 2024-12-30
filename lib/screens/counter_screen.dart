import 'package:bloc_app/bloc/counter_bloc.dart';
// import 'package:bloc_app/cubit/counter_cubit.dart';
// import 'package:bloc_app/screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                // BlocProvider.of<CounterCubit>(context).increment();
                context.read<CounterBloc>().add(Increment());
              },
              child: const Icon(
                Icons.add,
              ),
            ),
            // BlocConsumer<CounterCubit, CounterState>(builder: (context, state) {
            //   return Text(state.counter.toString());
            // }, listener: (context, state) {
            //   if (state.counter == 5) {
            //     Navigator.of(context).push(MaterialPageRoute(
            //         builder: (context) => const SecondScreen()));
            //   } else if (state is CounterIncrement) {
            //     _showSnackBar(context, "Incremented ${state.counter}");
            //   } else if (state is CounterDecrement) {
            //     _showSnackBar(context, "Decremented ${state.counter}");
            //   }
            // }),

            Text("${context.watch<CounterBloc>().state.counter}"),
            ElevatedButton(
              onPressed: () {
                // BlocProvider.of<CounterCubit>(context).decrement();
                context.read<CounterBloc>().add(Decrement());
              },
              child: const Icon(
                Icons.remove,
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
}
