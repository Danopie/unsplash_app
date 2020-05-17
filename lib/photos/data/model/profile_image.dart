import 'package:primitive_type_parser/primitive_type_parser.dart';

class Profile_image {

  final String small;
  final String medium;
  final String large;

	Profile_image.fromJson(Map<String, dynamic> map): 
		small = parseString(map["small"]),
		medium = parseString(map["medium"]),
		large = parseString(map["large"]);

	Map<String, dynamic> toJson() {
		final map = Map<String, dynamic>();
		map['small'] = small;
		map['medium'] = medium;
		map['large'] = large;
		return map;
	}
}
