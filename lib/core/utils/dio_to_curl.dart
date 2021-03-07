import 'package:dio/dio.dart';

String dio2curl(RequestOptions options) {
  var curl = '';
  try {
    // Add PATH + REQUEST_METHOD
    curl +=
    'curl --request ${options.method} \'${options.uri.replace(path: options.path)}\'';
    // Include headers
    if (options.headers != null && options.headers.isNotEmpty)
      for (var key in options.headers.keys) {
        curl += ' -H \'$key: ${options.headers[key]}\'';
      }
    // Include data if there is data
    if (options.data != null) {
      curl +=
      ' --data-binary \'${options.data is Map ? _standardizeMap(options.data) : options.data}\'';
    }
    curl += ' --insecure'; //bypass https verification
  } catch (e) {
    print(e.toString());
  }

  return curl;
}

dynamic _standardizeMap(Map data) {
  return data.map((k, v) => MapEntry('\"$k\"', _standardizeValue(v)));
}

dynamic _standardizeValue(dynamic value) {
  if (value is String) {
    return '\"$value\"';
  } else if (value is Map) {
    return _standardizeMap(value);
  } else if (value is List) {
    return _standardizeList(value);
  } else {
    return value;
  }
}

dynamic _standardizeList(List data) {
  return data.map((v) => _standardizeValue(v)).toList();
}