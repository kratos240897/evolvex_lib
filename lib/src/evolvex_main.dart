import 'package:bloc/bloc.dart';
import 'package:flutter_loggy/flutter_loggy.dart';
import 'package:loggy/loggy.dart';

import 'bloc/app_bloc_observer.dart';

class EvolveX {
  static init() {
    Loggy.initLoggy(
      logPrinter: const PrettyDeveloperPrinter(),
    );
      Bloc.observer = AppBlocObserver();
  }
}
