import 'package:unsplash_app/core/base/exception.dart';

class ApiTimeoutError extends AppError {}

class ApiHttpError extends AppError {
  final int? httpCode;

  ApiHttpError({this.httpCode});
}

class ApiUnknownError extends AppError {}
