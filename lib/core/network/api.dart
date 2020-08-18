import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meta/meta.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:unsplash_app/core/base/exception.dart';
import 'package:unsplash_app/core/network/interceptors/header_interceptor.dart';

final dioProvider = Provider.family<Dio, String>(
  (ref, url) {
    return Dio(
      BaseOptions(
        baseUrl: url,
        connectTimeout: 5000,
        receiveTimeout: 3000,
      ),
    )..interceptors.addAll(
        [
          ref.read(headerInterceptorProvider),
          PrettyDioLogger(
            requestHeader: true,
            responseHeader: true,
          ),
        ],
      );
  },
);

abstract class Api {
  Dio _client = Dio();

  Api(this._client);

  @protected
  Future<T> get<T>(String path, [Map<String, dynamic> params]) async {
    try {
      final response = await _client.get<T>(path, queryParameters: params);
      return response?.data;
    } on DioError catch (e) {
      _handleError(e);
    }
  }

  @protected
  Future<T> post<T>(String path, [Map<String, dynamic> params]) async {
    try {
      final response = await _client.post<T>(path, data: params);
      return response?.data;
    } on DioError catch (e) {
      _handleError(e);
    }
  }

  @protected
  Future<T> delete<T>(String path, [Map<String, dynamic> params]) async {
    try {
      final response = await _client.delete<T>(path, data: params);
      return response?.data;
    } on DioError catch (e) {
      _handleError(e);
    }
  }

  void _handleError(DioError e) {
    if (e.type == DioErrorType.CONNECT_TIMEOUT ||
        e.type == DioErrorType.SEND_TIMEOUT ||
        e.type == DioErrorType.RECEIVE_TIMEOUT) {
      throw TimeoutException();
    }
  }
}
