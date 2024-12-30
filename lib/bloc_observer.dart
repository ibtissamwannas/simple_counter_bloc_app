import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Observer extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    if (kDebugMode) print('onCreate -- bloc: ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (kDebugMode) print('onChange -- bloc: ${bloc.runtimeType}');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    if (kDebugMode) print('onTransition -- bloc: ${bloc.runtimeType}');
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    if (kDebugMode) print('onError -- bloc: ${bloc.runtimeType}');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    if (kDebugMode) print('onClose -- bloc: ${bloc.runtimeType}');
    super.onClose(bloc);
  }
}
