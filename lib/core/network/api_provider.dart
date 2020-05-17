import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:unsplash_app/core/base/exception.dart';
import 'package:unsplash_app/core/network/interceptors/header_interceptor.dart';

abstract class ApiProvider {
  Dio _client = Dio();

  ApiProvider(String url) {
    _client.options.baseUrl = url;
    _client.options.connectTimeout = 5000;
    _client.options.receiveTimeout = 3000;
    _client.interceptors.add(HeaderInterceptor());
    _client.interceptors.add(PrettyDioLogger(responseHeader: true));
  }

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

  void _handleError(DioError e) {
    if (e.type == DioErrorType.CONNECT_TIMEOUT ||
        e.type == DioErrorType.SEND_TIMEOUT ||
        e.type == DioErrorType.RECEIVE_TIMEOUT) {
      throw TimeoutException();
    }
  }
}
