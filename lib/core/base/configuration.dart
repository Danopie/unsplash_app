import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:primitive_type_parser/primitive_type_parser.dart';

final configurationProvider = FutureProvider<Configuration>((ref) async {
  final content = json.decode(
    await rootBundle.loadString('asset/configuration.json'),
  ) as Map<String, dynamic>;

  return Configuration.fromJson(content);
});

class Configuration {
  final String publicKey;
  final String secretKey;

  Configuration.fromJson(Map<String, dynamic> map)
      : publicKey = parseString(map["publicKey"]),
        secretKey = parseString(map["secretKey"]);

  Map<String, dynamic> toJson() {
    final map = Map<String, dynamic>();
    map['publicKey'] = publicKey;
    map['secretKey'] = secretKey;
    return map;
  }
}
