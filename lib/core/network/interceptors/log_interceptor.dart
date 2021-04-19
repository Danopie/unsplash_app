import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pretty_json/pretty_json.dart';
import 'package:unsplash_app/core/utils/dio_to_curl.dart';

final logInterceptorProvider = Provider((ref) => LogInterceptor());

class LogInterceptor extends Interceptor {
  @override
  Future onRequest(RequestOptions options) {
    var m = '''REQUEST:
responseType: ${options.responseType.toString()}, connectTimeout: ${options.connectTimeout}, receiveTimeout: ${options.receiveTimeout}
${dio2curl(options)}
''';
    print(m);
    return super.onRequest(options);
  }

  @override
  Future onResponse(Response response) {
    var m = '''RESPONSE:
${_printResponse(response)}
''';
    print(m);
    return super.onResponse(response);
  }

  @override
  Future onError(DioError err) {
    var m = '''ERROR: ${err.message}, response:
${_printResponse(err.response)}
''';
    print(m);
    return super.onError(err);
  }

  String _printResponse(Response? response) {
    if (response != null) {
      return '''uri: ${response.request.uri}, statusCode: ${response.statusCode} body:
${_decodeJson(response)}''';
    }
    return '';
  }

  _decodeJson(Response response) {
    final res= response.data;
    if (res is String) {
      return prettyJson(jsonDecode(res));
    }else {
      return response.data.toString();
    }
  }
}
