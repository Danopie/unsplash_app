import 'package:primitive_type_parser/primitive_type_parser.dart';

class UserToken {
  final String access_token;
  final String token_type;
  final String refresh_token;
  final String scope;
  final int created_at;

	UserToken.fromJson(Map<String, dynamic> map):
		access_token = parseString(map["access_token"]),
		token_type = parseString(map["token_type"]),
		refresh_token = parseString(map["refresh_token"]),
		scope = parseString(map["scope"]),
		created_at = parseInt(map["created_at"]);

	Map<String, dynamic> toJson() {
		final map = Map<String, dynamic>();
		map['access_token'] = access_token;
		map['token_type'] = token_type;
		map['refresh_token'] = refresh_token;
		map['scope'] = scope;
		map['created_at'] = created_at;
		return map;
	}
}
