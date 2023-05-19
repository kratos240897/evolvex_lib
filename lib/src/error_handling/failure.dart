import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure({required this.message});

  @override
  List<Object?> get props => [message];
}

class InternetConnectionFailure extends Failure {
  const InternetConnectionFailure({required String message})
      : super(message: message);
}

class InternalServerFailure extends Failure {
  const InternalServerFailure({required String message})
      : super(message: message);
}

class AuthorizationFailure extends Failure {
  const AuthorizationFailure({required String message})
      : super(message: message);
}

class RequestFailure extends Failure {
  const RequestFailure({required String message})
      : super(message: message);
}

class ResponseParseFailure extends Failure {
  const ResponseParseFailure({required String message})
      : super(message: message);
}

class UnknownFailure extends Failure {
  const UnknownFailure({required String message}) : super(message: message);
}
