import 'package:equatable/equatable.dart';
import 'package:primitive_type_parser/primitive_type_parser.dart';
import 'package:unsplash_app/photos/data/model/links.dart';
import 'package:unsplash_app/photos/data/model/sponsorship.dart';
import 'package:unsplash_app/photos/data/model/urls.dart';
import 'package:unsplash_app/photos/data/model/user.dart';

class Photo extends Equatable {
  final String id;
  final String created_at;
  final String updated_at;
  final Object promoted_at;
  final int width;
  final int height;
  final String color;
  final String description;
  final String alt_description;
  final Urls urls;
  final Links links;
  final List<Object> categories;
  final int likes;
  final bool liked_by_user;
  final Sponsorship sponsorship;
  final User user;

  @override
  List<Object> get props => [
        id,
        created_at,
        updated_at,
        promoted_at,
        width,
        height,
        color,
        description,
        alt_description,
        urls,
        links,
        categories,
        likes,
        liked_by_user,
        sponsorship,
        user
      ];

  Photo.fromJson(Map<String, dynamic> map)
      : id = parseString(map["id"]),
        created_at = parseString(map["created_at"]),
        updated_at = parseString(map["updated_at"]),
        promoted_at = map["promoted_at"],
        width = parseInt(map["width"]),
        height = parseInt(map["height"]),
        color = parseString(map["color"]),
        description = parseString(map["description"]),
        alt_description = parseString(map["alt_description"]),
        urls = map["urls"] == null ? null : Urls.fromJson(map["urls"]),
        links = map["links"] == null ? null : Links.fromJson(map["links"]),
        categories = map["categories"],
        likes = parseInt(map["likes"]),
        liked_by_user = parseBool(map["liked_by_user"]),
        sponsorship = map["sponsorship"] == null
            ? null
            : Sponsorship.fromJson(map["sponsorship"]),
        user = map["user"] == null ? null : User.fromJson(map["user"]);

  Map<String, dynamic> toJson() {
    final map = Map<String, dynamic>();
    map['id'] = id;
    map['created_at'] = created_at;
    map['updated_at'] = updated_at;
    map['promoted_at'] = promoted_at;
    map['width'] = width;
    map['height'] = height;
    map['color'] = color;
    map['description'] = description;
    map['alt_description'] = alt_description;
    map['urls'] = urls == null ? null : urls.toJson();
    map['links'] = links == null ? null : links.toJson();
    map['categories'] = categories;
    map['likes'] = likes;
    map['liked_by_user'] = liked_by_user;
    map['sponsorship'] = sponsorship == null ? null : sponsorship.toJson();
    map['user'] = user == null ? null : user.toJson();
    return map;
  }
}
