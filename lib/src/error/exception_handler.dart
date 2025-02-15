import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'failure.dart';

class ExceptionHandler {
  static Failure handleException(dynamic error) {
    if (error is DioException) {
      if (error.error is SocketException) {
        if (kDebugMode) {
          return const NoInternetConnectionError(
              message:
                  'No Internet Connection - Please check your internet connectivity.',
              action:
                  'Ensure you are connected to a network or check your network settings.');
        } else {
          return const NoInternetConnectionError(
              message: 'Oops! It seems you are not connected to the internet.',
              action: 'Please reconnect and try again.');
        }
      }
      if (error.error is FormatException) {
        if (kDebugMode) {
          return const InvalidResponseError(
              message:
                  'Invalid Response - The received response could not be processed due to an unexpected format.',
              action:
                  'Check the format of the received data or response structure.');
        } else {
          return const InvalidResponseError(
              message:
                  'Oops! The received response is in an unexpected format.',
              action:
                  'Please try again later or contact support for assistance.');
        }
      }
      switch (error.response?.statusCode) {
        case 400:
          if (kDebugMode) {
            return const BadRequestError(
                message:
                    'Bad Request - The server could not understand the request due to invalid syntax or missing parameters.',
                action:
                    'Please check the request parameters and ensure they follow the API documentation for proper formatting and required fields.');
          } else {
            return const BadRequestError(
                message:
                    'Oops! Something went wrong. Our system encountered an issue processing your request.',
                action:
                    'Please try again later or reach out to our support team for assistance if the issue persists. We apologize for the inconvenience.');
          }
        case 401:
          if (kDebugMode) {
            return const UnAuthorizedError(
                message:
                    'Unauthorized - Access denied due to missing or incorrect credentials.',
                action:
                    'Please ensure you have proper authorization or check your login credentials.');
          } else {
            return const UnAuthorizedError(
                message: 'Oops! Something went wrong. Authorization failed.',
                action:
                    'Please try logging in again or contact support for further assistance.');
          }
        case 403:
          if (kDebugMode) {
            return const ForbiddenError(
                message:
                    'Forbidden - Access to the requested resource is forbidden.',
                action:
                    'Check your permissions or authentication credentials.');
          } else {
            return const ForbiddenError(
                message:
                    'Oops! Something went wrong. Access to the resource is restricted.',
                action:
                    'Please contact support for assistance or try again later.');
          }
        case 404:
          if (kDebugMode) {
            return const NotFoundError(
                message:
                    'Not Found - The requested resource was not found on the server.',
                action: 'Check the URL or identifier used for the request.');
          } else {
            return const NotFoundError(
                message: 'Oops! The requested resource was not found.',
                action:
                    'Please verify the URL or contact support for further assistance.');
          }
        case 408:
          if (kDebugMode) {
            return const RequestTimeoutError(
                message:
                    'Request Timeout - The server timed out waiting for the request.',
                action: 'Check your internet connection and try again.');
          } else {
            return const RequestTimeoutError(
                message: 'Oops! The request took too long to process.',
                action:
                    'Please try again later or contact support for assistance.');
          }
        case 500:
          if (kDebugMode) {
            return const InternalServerError(
                message:
                    'Internal Server Error - The server encountered an unexpected condition.',
                action:
                    'Check the server logs for more details or contact the system administrator.');
          } else {
            return const InternalServerError(
                message: 'Oops! Something went wrong on our end.',
                action:
                    'Please try again later or contact support for assistance.');
          }
        case 502:
          if (kDebugMode) {
            return const BadGatewayError(
                message:
                    'Bad Gateway - The server received an invalid response from the upstream server.',
                action:
                    'Check the server status or contact the system administrator.');
          } else {
            return const BadGatewayError(
                message: 'Oops! There is an issue connecting to the server.',
                action:
                    'Please try again later or contact support for assistance.');
          }
        case 504:
          if (kDebugMode) {
            return const GatewayTimeoutError(
                message:
                    'Gateway Timeout - The server did not receive a timely response from the upstream server.',
                action: 'Check your internet connection and try again.');
          } else {
            return const GatewayTimeoutError(
                message: 'Oops! The request took too long to process.',
                action:
                    'Please try again later or contact support for assistance.');
          }
        case 505:
          if (kDebugMode) {
            return const HttpVersionNotSupportedError(
                message:
                    'HTTP Version Not Supported - The server does not support the HTTP protocol version used in the request.',
                action:
                    'Check the HTTP protocol version and update if necessary.');
          } else {
            return const HttpVersionNotSupportedError(
                message:
                    'Oops! The server does not support the HTTP protocol version used.',
                action:
                    'Please try again later or contact support for assistance.');
          }
        case 507:
          if (kDebugMode) {
            return const InsufficientStorageError(
                message:
                    'Insufficient Storage - The server is unable to store the representation needed to complete the request.',
                action:
                    'Check available storage or contact the system administrator.');
          } else {
            return const InsufficientStorageError(
                message:
                    'Oops! There is not enough storage available on the server.',
                action:
                    'Please try again later or contact support for assistance.');
          }
        case 508:
          if (kDebugMode) {
            return const LoopDetectedError(
                message:
                    'Loop Detected - The server detected an infinite loop while processing the request.',
                action: 'Review the request logic to prevent infinite loops.');
          } else {
            return const LoopDetectedError(
                message: 'Oops! The server detected an infinite loop.',
                action:
                    'Please try again later or contact support for assistance.');
          }
        default:
          if (kDebugMode) {
            return const UnknownError(
                message:
                    'Unknown Error - An unexpected error occurred. Please check the server logs for more details.',
                action:
                    'Review the request or contact the system administrator for assistance.');
          } else {
            return const UnknownError(
                message:
                    'Oops! Something unexpected happened. Our team has been notified.',
                action:
                    'Please try again later or contact support for assistance.');
          }
      }
    }
    if (kDebugMode) {
      return const UnknownError(
          message:
              'Unknown Error - An unexpected error occurred. Please check the server logs for more details.',
          action:
              'Review the request or contact the system administrator for assistance.');
    } else {
      return const UnknownError(
          message:
              'Oops! Something unexpected happened. Our team has been notified.',
          action: 'Please try again later or contact support for assistance.');
    }
  }
}
