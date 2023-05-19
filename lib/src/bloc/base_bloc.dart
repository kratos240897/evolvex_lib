import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

abstract class BaseState {}

abstract class BaseBloc<E, S extends BaseState> extends Bloc<E, S> {
  final S initialState;
  BaseBloc({required this.initialState}) : super(initialState) {
    on<E>(eventHandler);
  }

  Future<void> eventHandler(E event, Emitter<S> emit) async {
    try {
      await handleEvents(event, emit);
    } catch (error, stackTrace) {
      debugPrint('Error: $error');
      debugPrint('Stacktrace: $stackTrace');
      emit(getErrorState(error));
    }
  }

  Future<void> handleEvents(E event, Emitter<S> emit);

  S getErrorState(Object error);
}
