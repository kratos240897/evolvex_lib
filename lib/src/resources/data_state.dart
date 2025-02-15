import 'package:evolvex_lib/evolvex_lib.dart';

enum DataState {
  fetched,
  loading,
  failed;

  bool get isFetched => this == DataState.fetched;
  bool get isLoading => this == DataState.loading;
  bool get isFailed => this == DataState.failed;
}

sealed class Ds<T> {
  Ds({required this.state, this.error, this.valueOrNull});
  final T? valueOrNull;
  final Object? error;
  final DataState state;
  T? get value => valueOrNull;

  R onState<R>(
      {required R Function(T data) fetched,
      required R Function() loading,
      required R Function(Object error) failed}) {
    if (state.isLoading) {
      return loading();
    } else if (state.isFetched) {
      return fetched(valueOrNull as T);
    } else {
      return failed(error!);
    }
  }
}

abstract class DataStateV1<T> {
  final T? data;
  final Failure? error;

  DataStateV1({this.data, this.error});
}

class DataSuccess<T> extends DataStateV1<T> {
  DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataStateV1<T> {
  DataFailed(Failure error) : super(error: error);
}
