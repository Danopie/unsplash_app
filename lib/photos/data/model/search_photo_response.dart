import 'package:primitive_type_parser/primitive_type_parser.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';

class SearchPhotoResponse {

  final int total;
  final int total_pages;
  final List<Photo>? results;

	SearchPhotoResponse.fromJson(Map<String, dynamic> map): 
		total = parseInt(map["total"]),
		total_pages = parseInt(map["total_pages"]),
		results = map["results"] == null? null : List<Photo>.from(map["results"].map((it) => Photo.fromJson(it)));

	Map<String, dynamic> toJson() {
		final map = Map<String, dynamic>();
		map['total'] = total;
		map['total_pages'] = total_pages;
		map['results'] = results != null ? 
			this.results!.map((v) => v.toJson()).toList()
			: null;
		return map;
	}
}
