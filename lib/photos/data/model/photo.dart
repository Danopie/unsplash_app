import 'package:equatable/equatable.dart';
import 'package:primitive_type_parser/primitive_type_parser.dart';
import 'package:unsplash_app/photos/data/model/links.dart';
import 'package:unsplash_app/photos/data/model/sponsorship.dart';
import 'package:unsplash_app/photos/data/model/urls.dart';
import 'package:unsplash_app/photos/data/model/user.dart';

class Photo extends Equatable {
  final String? id;
  final String? created_at;
  final String? updated_at;
  final Object? promoted_at;
  final Object? blur_hash;
  final int? width;
  final int? height;
  final String? color;
  final String? description;
  final String? alt_description;
  final Urls? urls;
  final Links? links;
  final List<Object>? categories;
  final int? likes;
  final bool? liked_by_user;
  final Sponsorship? sponsorship;
  final User? user;

  @override
  List<Object?> get props => [
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
        user,
        blur_hash,
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
        blur_hash = parseString(map["blur_hash"]),
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
    map['urls'] = urls == null ? null : urls!.toJson();
    map['links'] = links == null ? null : links!.toJson();
    map['categories'] = categories;
    map['likes'] = likes;
    map['liked_by_user'] = liked_by_user;
    map['sponsorship'] = sponsorship == null ? null : sponsorship!.toJson();
    map['user'] = user == null ? null : user!.toJson();
    return map;
  }

  const Photo({
    this.id,
    this.created_at,
    this.updated_at,
    this.promoted_at,
    this.width,
    this.height,
    this.color,
    this.description,
    this.alt_description,
    this.urls,
    this.links,
    this.categories,
    this.likes,
    this.liked_by_user,
    this.sponsorship,
    this.user,
    this.blur_hash,
  });

  Photo copyWith({
    String? id,
    String? created_at,
    String? updated_at,
    Object? promoted_at,
    Object? blur_hash,
    int? width,
    int? height,
    String? color,
    String? description,
    String? alt_description,
    Urls? urls,
    Links? links,
    List<Object>? categories,
    int? likes,
    bool? liked_by_user,
    Sponsorship? sponsorship,
    User? user,
  }) {
    if ((id == null || identical(id, this.id)) &&
        (created_at == null || identical(created_at, this.created_at)) &&
        (updated_at == null || identical(updated_at, this.updated_at)) &&
        (promoted_at == null || identical(promoted_at, this.promoted_at)) &&
        (blur_hash == null || identical(blur_hash, this.blur_hash)) &&
        (width == null || identical(width, this.width)) &&
        (height == null || identical(height, this.height)) &&
        (color == null || identical(color, this.color)) &&
        (description == null || identical(description, this.description)) &&
        (alt_description == null ||
            identical(alt_description, this.alt_description)) &&
        (urls == null || identical(urls, this.urls)) &&
        (links == null || identical(links, this.links)) &&
        (categories == null || identical(categories, this.categories)) &&
        (likes == null || identical(likes, this.likes)) &&
        (liked_by_user == null ||
            identical(liked_by_user, this.liked_by_user)) &&
        (sponsorship == null || identical(sponsorship, this.sponsorship)) &&
        (user == null || identical(user, this.user))) {
      return this;
    }

    return new Photo(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      promoted_at: promoted_at ?? this.promoted_at,
      blur_hash: blur_hash ?? this.blur_hash,
      width: width ?? this.width,
      height: height ?? this.height,
      color: color ?? this.color,
      description: description ?? this.description,
      alt_description: alt_description ?? this.alt_description,
      urls: urls ?? this.urls,
      links: links ?? this.links,
      categories: categories ?? this.categories,
      likes: likes ?? this.likes,
      liked_by_user: liked_by_user ?? this.liked_by_user,
      sponsorship: sponsorship ?? this.sponsorship,
      user: user ?? this.user,
    );
  }
}
