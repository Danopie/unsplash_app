import 'package:primitive_type_parser/primitive_type_parser.dart';

class Badge {

  final String title;
  final bool primary;
  final String slug;
  final String link;

	Badge.fromJson(Map<String, dynamic> map): 
		title = parseString(map["title"]),
		primary = parseBool(map["primary"]),
		slug = parseString(map["slug"]),
		link = parseString(map["link"]);

	Map<String, dynamic> toJson() {
		final map = Map<String, dynamic>();
		map['title'] = title;
		map['primary'] = primary;
		map['slug'] = slug;
		map['link'] = link;
		return map;
	}
}
