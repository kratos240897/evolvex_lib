import 'package:bloc/bloc.dart';
import 'package:flutter_loggy/flutter_loggy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loggy/loggy.dart';

import 'state_management/bloc/app_bloc_observer.dart';

class EvolveX {
  late final ScreenUtilInit screenUtilInitMaterialApp;
  void init({bool isBlocStateManagement = false}) {
    screenUtilInitMaterialApp = ScreenUtilInit(minTextAdapt: true);
    Loggy.initLoggy(
      logPrinter: const PrettyDeveloperPrinter(),
    );
    if (isBlocStateManagement) {
      Bloc.observer = AppBlocObserver();
    }
  }
}
