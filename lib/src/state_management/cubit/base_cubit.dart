import 'package:bloc/bloc.dart';

import '../bloc/base_bloc.dart';

abstract class BaseCubit<S extends BaseState> extends Cubit<S> {
  final S initialState;

  BaseCubit({required this.initialState}) : super(initialState);

  @override
  void onError(Object error, StackTrace stackTrace) {
    emit(getErrorState(error));
    super.onError(error, stackTrace);
  }

  S getErrorState(Object error);
}
