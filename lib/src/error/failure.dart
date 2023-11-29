import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  final String action;

  const Failure({required this.message, required this.action});

  @override
  List<Object?> get props => [message];
}

class NoInternetConnectionError extends Failure {
  const NoInternetConnectionError(
      {required String message, required String action})
      : super(message: message, action: action);
}

class DatabaseError extends Failure {
  const DatabaseError({required String message, required String action})
      : super(message: message, action: action);
}

// * 400
class BadRequestError extends Failure {
  const BadRequestError({required String message, required String action})
      : super(message: message, action: action);
}

// * 401
class UnAuthorizedError extends Failure {
  const UnAuthorizedError({required String message, required String action})
      : super(message: message, action: action);
}

// * 403 This API error occurs when a server refuses to fulfill a request from the client due to authorization issues or other restrictions put in place by the API provider.
// * To troubleshoot this API error, ensure you have adequate permissions for making requests on the API endpoints in question.
// *  Then, check the API documentation to make sure that you’re sending valid data parameters with your requests.
// *  Finally, verify that no external restrictions are in place that may be blocking access to the API endpoints in question.

class ForbiddenError extends Failure {
  const ForbiddenError({required String message, required String action})
      : super(message: message, action: action);
}

// * 404
class NotFoundError extends Failure {
  const NotFoundError({required String message, required String action})
      : super(message: message, action: action);
}

// * 408
class RequestTimeoutError extends Failure {
  const RequestTimeoutError({required String message, required String action})
      : super(message: message, action: action);
}

// * 500 This API error occurs when a server encounters an unexpected condition that prevents it from fulfilling the API request.
// * This could be caused by an issue with the API provider’s internal systems or there could be something wrong with how the API request was composed.
// * To troubleshoot this API error, check the API documentation to ensure that you send valid data parameters with your requests.
// * Then, contact your API provider for further assistance in resolving any underlying issues within their internal systems.

class InternalServerError extends Failure {
  const InternalServerError({required String message, required String action})
      : super(message: message, action: action);
}

// * 502 This API error occurs when a server acts as a proxy and receives an invalid response from another upstream server.
// * This could be caused by the domain name not resolving to the correct IP, the server is not reachable, or the firewire blocking the communication.
// * To troubleshoot this API error, check your domain name, verify that your server is reachable, or check your firewall logs.

class BadGatewayError extends Failure {
  const BadGatewayError({required String message, required String action})
      : super(message: message, action: action);
}

// * 504 This API error occurs when a server acts as a proxy and doesn’t receive a response from another server upstream within a specified time.
// * This could be caused by an issue with internet connectivity or something wrong with how the API request was composed.
// * To troubleshoot this API error, first, verify that your internet connection is functioning properly and then check the API documentation to make sure that you’re sending valid data parameters with your requests.

class GatewayTimeoutError extends Failure {
  const GatewayTimeoutError({required String message, required String action})
      : super(message: message, action: action);
}

// * 505 This API error occurs when a server doesn’t support the client's requested version of the HTTP protocol.
// * To troubleshoot this API error, verify that you are using a supported version of the HTTP protocol (usually 1.1).
// * Then, contact your API provider for further assistance in resolving any underlying issues within their internal systems.

class HttpVersionNotSupportedError extends Failure {
  const HttpVersionNotSupportedError(
      {required String message, required String action})
      : super(message: message, action: action);
}

// * 507 This API error occurs when there isn’t enough storage space available on a server to fulfill an API request.
// * To troubleshoot this API error, you could raise the standard hosting package you have or try optimizing the repositories if there's excess page traffic.

class InsufficientStorageError extends Failure {
  const InsufficientStorageError(
      {required String message, required String action})
      : super(message: message, action: action);
}

// * 508 This API error occurs when a server identifies an infinite loop (a cycle of API requests).
// * This could be caused by too many redirects in a chain that prevents the requested resources or URL from rendering.
// * To troubleshoot this API error, try to identify which API calls are causing the loop, then contact your API provider for additional assistance in resolving any underlying issues.

class LoopDetectedError extends Failure {
  const LoopDetectedError({required String message, required String action})
      : super(message: message, action: action);
}

class InvalidResponseError extends Failure {
  const InvalidResponseError({required String message, required String action})
      : super(message: message, action: action);
}

class UnknownError extends Failure {
  const UnknownError({required String message, required String action})
      : super(message: message, action: action);
}
