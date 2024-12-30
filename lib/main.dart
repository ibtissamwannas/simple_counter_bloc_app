import 'package:bloc_app/bloc/counter_bloc.dart';
import 'package:bloc_app/bloc_observer.dart';
import 'package:bloc_app/cubit/counter_cubit.dart';
import 'package:bloc_app/screens/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = Observer();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterCubit(),
        ),
        BlocProvider(
          create: (context) => CounterBloc(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const CounterScreen(),
      ),
    );
  }
}
