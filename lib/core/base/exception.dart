import 'package:unsplash_app/core/constants.dart';

class AppError implements Exception {
  final String message;

  const AppError({this.message = DEFAULT_ERROR_MESSAGE});

  @override
  String toString() {
    return message;
  }
}
