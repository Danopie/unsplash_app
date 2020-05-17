import 'package:primitive_type_parser/primitive_type_parser.dart';
import 'package:unsplash_app/photos/data/model/links.dart';
import 'package:unsplash_app/photos/data/model/profile_image.dart';

class User {
  final String id;
  final String updated_at;
  final String username;
  final String name;
  final String first_name;
  final String last_name;
  final String twitter_username;
  final String portfolio_url;
  final String bio;
  final Object location;
  final Links links;
  final Profile_image profile_image;
  final String instagram_username;
  final int total_collections;
  final int total_likes;
  final int total_photos;
  final bool accepted_tos;

  User.fromJson(Map<String, dynamic> map)
      : id = parseString(map["id"]),
        updated_at = parseString(map["updated_at"]),
        username = parseString(map["username"]),
        name = parseString(map["name"]),
        first_name = parseString(map["first_name"]),
        last_name = parseString(map["last_name"]),
        twitter_username = parseString(map["twitter_username"]),
        portfolio_url = parseString(map["portfolio_url"]),
        bio = parseString(map["bio"]),
        location = map["location"],
        links = map["links"] == null ? null : Links.fromJson(map["links"]),
        profile_image = map["profile_image"] == null
            ? null
            : Profile_image.fromJson(map["profile_image"]),
        instagram_username = parseString(map["instagram_username"]),
        total_collections = parseInt(map["total_collections"]),
        total_likes = parseInt(map["total_likes"]),
        total_photos = parseInt(map["total_photos"]),
        accepted_tos = parseBool(map["accepted_tos"]);

  Map<String, dynamic> toJson() {
    final map = Map<String, dynamic>();
    map['id'] = id;
    map['updated_at'] = updated_at;
    map['username'] = username;
    map['name'] = name;
    map['first_name'] = first_name;
    map['last_name'] = last_name;
    map['twitter_username'] = twitter_username;
    map['portfolio_url'] = portfolio_url;
    map['bio'] = bio;
    map['location'] = location;
    map['links'] = links == null ? null : links.toJson();
    map['profile_image'] =
        profile_image == null ? null : profile_image.toJson();
    map['instagram_username'] = instagram_username;
    map['total_collections'] = total_collections;
    map['total_likes'] = total_likes;
    map['total_photos'] = total_photos;
    map['accepted_tos'] = accepted_tos;
    return map;
  }
}
