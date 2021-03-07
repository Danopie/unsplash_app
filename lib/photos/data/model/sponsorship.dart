import 'package:primitive_type_parser/primitive_type_parser.dart';
import 'package:unsplash_app/photos/data/model/sponsor.dart';

class Sponsorship {
  final List<Object>? impression_urls;
  final String? tagline;
  final Object? tagline_url;
  final Sponsor? sponsor;

  Sponsorship.fromJson(Map<String, dynamic> map)
      : impression_urls = map["impression_urls"],
        tagline = parseString(map["tagline"]),
        tagline_url = map["tagline_url"],
        sponsor =
            map["sponsor"] == null ? null : Sponsor.fromJson(map["sponsor"]);

  Map<String, dynamic> toJson() {
    final map = Map<String, dynamic>();
    map['impression_urls'] = impression_urls;
    map['tagline'] = tagline;
    map['tagline_url'] = tagline_url;
    map['sponsor'] = sponsor == null ? null : sponsor!.toJson();
    return map;
  }
}
