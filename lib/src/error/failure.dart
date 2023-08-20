import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure({required this.message});

  @override
  List<Object?> get props => [message];
}

class NoInternetConnection extends Failure {
  const NoInternetConnection({required String message})
      : super(message: message);
}

class InternalServerError extends Failure {
  const InternalServerError({required String message})
      : super(message: message);
}

class NotAuthorized extends Failure {
  const NotAuthorized({required String message}) : super(message: message);
}

class BadRequest extends Failure {
  const BadRequest({required String message}) : super(message: message);
}

class InvalidResponse extends Failure {
  const InvalidResponse({required String message}) : super(message: message);
}

class UnknownError extends Failure {
  const UnknownError({required String message}) : super(message: message);
}
