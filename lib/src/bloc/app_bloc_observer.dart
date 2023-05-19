import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint('CHANGE - Current State: ${change.currentState}');
    debugPrint('CHANGE - Next State: ${change.currentState}');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    debugPrint('TRANSITION - Event: ${transition.event}');
    debugPrint('TRANSITION - Current State: ${transition.currentState}');
    debugPrint('TRANSITION - Next State: ${transition.currentState}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint(error.toString());
    debugPrint(stackTrace.toString());
    super.onError(bloc, error, stackTrace);
  }
}
