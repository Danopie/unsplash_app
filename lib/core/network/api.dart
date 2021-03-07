import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meta/meta.dart';
import 'package:unsplash_app/core/base/exception.dart';
import 'package:unsplash_app/core/network/interceptors/header_interceptor.dart';
import 'package:unsplash_app/core/network/interceptors/log_interceptor.dart';

final ProviderFamily<Dio, String> dioProvider = Provider.family<Dio, String>(
  (ref, url) {
    return Dio(
      BaseOptions(
        connectTimeout: 5000,
        receiveTimeout: 3000,
      ),
    )..interceptors.addAll(
        [
          ref.read(headerInterceptorProvider),
          ref.read(logInterceptorProvider),
        ],
      );
  },
);

abstract class Api {
  final Dio _client;

  Api(this._client);

  @protected
  Future<T?> get<T>(String path, [Map<String, dynamic>? params]) async {
    try {
      final response = await _client.get<T>(path, queryParameters: params);
      return response.data;
    } on DioError catch (e) {
      _handleError(e);
    }
  }

  @protected
  Future<T?> post<T>(String path, [Map<String, dynamic>? params]) async {
    try {
      final response = await _client.post<T>(path, data: params);
      return response.data;
    } on DioError catch (e) {
      _handleError(e);
    }
  }

  @protected
  Future<T?> delete<T>(String path, [Map<String, dynamic>? params]) async {
    try {
      final response = await _client.delete<T>(path, data: params);
      return response.data;
    } on DioError catch (e) {
      _handleError(e);
    }
  }

  void _handleError(DioError e) {
    if (e.type == DioErrorType.connectTimeout ||
        e.type == DioErrorType.sendTimeout ||
        e.type == DioErrorType.receiveTimeout) {
      throw TimeoutException();
    }
  }
}
