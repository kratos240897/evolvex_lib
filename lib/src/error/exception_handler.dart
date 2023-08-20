import 'dart:io';
import 'package:dio/dio.dart';
import 'failure.dart';

class ExceptionHandler {
  static Failure handleException(dynamic error) {
    if (error is DioException) {
      if (error.error is SocketException) {
        return const NoInternetConnection(
            message: 'Please check your internet connection.');
      }
      if (error.error is FormatException) {
        return const InvalidResponse(message: 'Invalid response from server.');
      }
      switch (error.response?.statusCode) {
        case 500:
          return const InternalServerError(
              message: 'Server busy. Please try again after some time.');
        case 400:
          return const BadRequest(message: 'Bad request.');
        case 401:
          return const NotAuthorized(message: 'Unauthorized.');
        default:
          return const UnknownError(
              message: 'Something went wrong. Please try again later.');
      }
    }

    return const UnknownError(
        message: 'Something went wrong. Please try again later.');
  }
}
