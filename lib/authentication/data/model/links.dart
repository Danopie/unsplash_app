import 'package:primitive_type_parser/primitive_type_parser.dart';

class Links {

  final String self;
  final String html;
  final String photos;
  final String likes;
  final String portfolio;

	Links.fromJson(Map<String, dynamic> map): 
		self = parseString(map["self"]),
		html = parseString(map["html"]),
		photos = parseString(map["photos"]),
		likes = parseString(map["likes"]),
		portfolio = parseString(map["portfolio"]);

	Map<String, dynamic> toJson() {
		final map = Map<String, dynamic>();
		map['self'] = self;
		map['html'] = html;
		map['photos'] = photos;
		map['likes'] = likes;
		map['portfolio'] = portfolio;
		return map;
	}
}
