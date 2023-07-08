import 'dart:io';
import 'package:dio/dio.dart';
import 'failure.dart';

class ExceptionHandler {
  static Failure handleException(dynamic error) {
    if (error is DioException) {
      if (error.error is SocketException) {
        return const InternetConnectionFailure(
            message: 'Please check your internet connection.');
      }
      if (error.error is FormatException) {
        return const ResponseParseFailure(
            message: 'Invalid response from server.');
      }
      switch (error.response?.statusCode) {
        case 500:
          return const InternalServerFailure(
              message: 'Server busy. Please try again after some time.');
        case 400:
          return const RequestFailure(message: 'Bad request.');
        case 401:
          return const AuthorizationFailure(message: 'Unauthorized.');
        default:
          return const UnknownFailure(
              message: 'Something went wrong. Please try again later.');
      }
    }

    return const UnknownFailure(
        message: 'Something went wrong. Please try again later.');
  }
}
