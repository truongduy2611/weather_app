import 'dart:io';

import 'package:dio/dio.dart';

class APIError implements Exception {
  APIError({
    this.statusCode,
    this.responseException,
    this.originalError,
  });

  int? statusCode;
  ResponseException? responseException;
  Object? originalError;

  factory APIError.fromJson(Map<String, dynamic> json) => APIError(
        responseException: json['error'] == null
            ? null
            : ResponseException.fromJson(json['error']),
      );

  factory APIError.fromDioException(DioException error) {
    final statusCode = error.response?.statusCode;
    switch (error.type) {
      case DioExceptionType.badResponse:
        try {
          final json = error.response?.data as Map<String, dynamic>;
          return APIError.fromJson(json)..statusCode = statusCode;
        } catch (e) {
          return APIError(
            statusCode: statusCode,
            responseException: ResponseException(
              message: 'Unexpected error!',
            ),
          );
        }

      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.badCertificate:
      case DioExceptionType.cancel:
      case DioExceptionType.connectionError:
      case DioExceptionType.unknown:
        if (error.error is SocketException) {
          return APIError(
            statusCode: statusCode,
            responseException: ResponseException(
              message: 'No internet connection error!',
            ),
          );
        }

        return APIError(
          statusCode: statusCode,
          responseException: ResponseException(
            message: 'Unexpected error!',
          ),
        );
    }
  }

  @override
  String toString() {
    return responseException?.message ?? originalError?.toString() ?? '';
  }
}

class ResponseException {
  ResponseException({
    this.message,
    this.code,
  });

  String? message;
  int? code;

  factory ResponseException.fromJson(Map<String, dynamic> json) =>
      ResponseException(
        message: json['message'],
        code: json['code'],
      );

  Map<String, dynamic> toJson() => {
        'message': message,
        'code': code,
      };
}

extension ApiErrorExtension on Object {
  APIError get apiError {
    final error = this;
    if (error is DioException) {
      return APIError.fromDioException(error);
    }
    return APIError(originalError: error);
  }
}
