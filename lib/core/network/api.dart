import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meta/meta.dart';
import 'package:unsplash_app/core/network/api_error.dart';
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
  Future<dynamic> get(String path, [Map<String, dynamic>? params]) async {
    try {
      final response = await _client.get<String>(path, queryParameters: params);
      return response.data;
    } on DioError catch (e) {
      _handleError(e);
    }
    throw ApiUnknownError();
  }

  @protected
  Future<dynamic> post(String path,
      [Map<String, dynamic>? params]) async {
    try {
      final response = await _client.post(path, data: params);
      return response.data;
    } on DioError catch (e) {
      _handleError(e);
    }
    throw ApiUnknownError();
  }

  @protected
  Future<dynamic> delete(String path, [Map<String, dynamic>? params]) async {
    try {
      final response = await _client.delete(path, data: params);
      return response.data;
    } on DioError catch (e) {
      _handleError(e);
    }
    throw ApiUnknownError();
  }

  void _handleError(DioError e) {
    if (e.type == DioErrorType.connectTimeout ||
        e.type == DioErrorType.sendTimeout ||
        e.type == DioErrorType.receiveTimeout) {
      throw ApiTimeoutError();
    } else if (e.type == DioErrorType.response) {
      throw ApiHttpError(httpCode: e.response?.statusCode);
    } else {
      throw ApiUnknownError();
    }
  }
}
