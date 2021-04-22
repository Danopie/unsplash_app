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
  final List<Tag>? tags;
  final RelatedCollections? relatedCollections;

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
        user = map["user"] == null ? null : User.fromJson(map["user"]),
        tags = map["tags"] == null
            ? null
            : List<Tag>.from(map["tags"].map((x) => Tag.fromJson(x))),
        relatedCollections = map["related_collections"] == null ? null : RelatedCollections.fromJson(map["related_collections"]);

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
    this.relatedCollections,
    this.tags,
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

class RelatedCollections {
  RelatedCollections({
    this.total,
    this.type,
    this.results,
  });

  final int? total;
  final String? type;
  final List<PhotoCollection>? results;

  factory RelatedCollections.fromJson(Map<String, dynamic> json) => RelatedCollections(
    total: json["total"] == null ? null : json["total"],
    type: json["type"] == null ? null : json["type"],
    results: json["results"] == null ? null : List<PhotoCollection>.from(json["results"].map((x) => PhotoCollection.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "total": total == null ? null : total,
    "type": type == null ? null : type,
    "results": results == null ? null : List<dynamic>.from(results!.map((x) => x.toJson())),
  };
}

class PhotoCollection {
  PhotoCollection({
    this.id,
    this.title,
    this.description,
    this.publishedAt,
    this.lastCollectedAt,
    this.updatedAt,
    this.curated,
    this.featured,
    this.totalPhotos,
    this.private,
    this.shareKey,
    this.tags,
    this.links,
    this.user,
    this.coverPhoto,
    this.previewPhotos,
  });

  final String? id;
  final String? title;
  final dynamic description;
  final DateTime? publishedAt;
  final DateTime? lastCollectedAt;
  final DateTime? updatedAt;
  final bool? curated;
  final bool? featured;
  final int? totalPhotos;
  final bool? private;
  final String? shareKey;
  final List<Tag>? tags;
  final ResultLinks? links;
  final User? user;
  final CoverPhoto? coverPhoto;
  final List<PreviewPhoto>? previewPhotos;

  factory PhotoCollection.fromJson(Map<String, dynamic> json) => PhotoCollection(
    id: json["id"] == null ? null : json["id"],
    title: json["title"] == null ? null : json["title"],
    description: json["description"],
    publishedAt: json["published_at"] == null ? null : DateTime.parse(json["published_at"]),
    lastCollectedAt: json["last_collected_at"] == null ? null : DateTime.parse(json["last_collected_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    curated: json["curated"] == null ? null : json["curated"],
    featured: json["featured"] == null ? null : json["featured"],
    totalPhotos: json["total_photos"] == null ? null : json["total_photos"],
    private: json["private"] == null ? null : json["private"],
    shareKey: json["share_key"] == null ? null : json["share_key"],
    tags: json["tags"] == null ? null : List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
    links: json["links"] == null ? null : ResultLinks.fromJson(json["links"]),
    user: json["user"] == null ? null : User.fromJson(json["user"]),
    coverPhoto: json["cover_photo"] == null ? null : CoverPhoto.fromJson(json["cover_photo"]),
    previewPhotos: json["preview_photos"] == null ? null : List<PreviewPhoto>.from(json["preview_photos"].map((x) => PreviewPhoto.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "title": title == null ? null : title,
    "description": description,
    "published_at": publishedAt == null ? null : publishedAt?.toIso8601String(),
    "last_collected_at": lastCollectedAt == null ? null : lastCollectedAt?.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
    "curated": curated == null ? null : curated,
    "featured": featured == null ? null : featured,
    "total_photos": totalPhotos == null ? null : totalPhotos,
    "private": private == null ? null : private,
    "share_key": shareKey == null ? null : shareKey,
    "tags": tags == null ? null : List<dynamic>.from(tags!.map((x) => x.toJson())),
    "links": links == null ? null : links!.toJson(),
    "user": user == null ? null : user!.toJson(),
    "cover_photo": coverPhoto == null ? null : coverPhoto!.toJson(),
    "preview_photos": previewPhotos == null ? null : List<dynamic>.from(previewPhotos!.map((x) => x.toJson())),
  };
}

class ResultLinks {
  ResultLinks({
    this.self,
    this.html,
    this.photos,
    this.related,
  });

  final String? self;
  final String? html;
  final String? photos;
  final String? related;

  factory ResultLinks.fromJson(Map<String, dynamic> json) => ResultLinks(
    self: json["self"] == null ? null : json["self"],
    html: json["html"] == null ? null : json["html"],
    photos: json["photos"] == null ? null : json["photos"],
    related: json["related"] == null ? null : json["related"],
  );

  Map<String, dynamic> toJson() => {
    "self": self == null ? null : self,
    "html": html == null ? null : html,
    "photos": photos == null ? null : photos,
    "related": related == null ? null : related,
  };
}

class PreviewPhoto {
  PreviewPhoto({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.blurHash,
    this.urls,
  });

  final String? id;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? blurHash;
  final Urls? urls;

  factory PreviewPhoto.fromJson(Map<String, dynamic> json) => PreviewPhoto(
    id: json["id"] == null ? null : json["id"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    blurHash: json["blur_hash"] == null ? null : json["blur_hash"],
    urls: json["urls"] == null ? null : Urls.fromJson(json["urls"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
    "blur_hash": blurHash == null ? null : blurHash,
    "urls": urls == null ? null : urls?.toJson(),
  };
}


class CoverPhoto {
  CoverPhoto({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.promotedAt,
    this.width,
    this.height,
    this.color,
    this.blurHash,
    this.description,
    this.altDescription,
    this.urls,
    this.links,
    this.categories,
    this.likes,
    this.likedByUser,
    this.currentUserCollections,
    this.sponsorship,
    this.user,
  });

  final String? id;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? promotedAt;
  final int? width;
  final int? height;
  final String? color;
  final String? blurHash;
  final String? description;
  final String? altDescription;
  final Urls? urls;
  final PhotoLinks? links;
  final List<dynamic>? categories;
  final int? likes;
  final bool? likedByUser;
  final List<dynamic>? currentUserCollections;
  final dynamic sponsorship;
  final User? user;

  factory CoverPhoto.fromJson(Map<String, dynamic> json) => CoverPhoto(
    id: json["id"] == null ? null : json["id"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    promotedAt: json["promoted_at"] == null ? null : DateTime.parse(json["promoted_at"]),
    width: json["width"] == null ? null : json["width"],
    height: json["height"] == null ? null : json["height"],
    color: json["color"] == null ? null : json["color"],
    blurHash: json["blur_hash"] == null ? null : json["blur_hash"],
    description: json["description"] == null ? null : json["description"],
    altDescription: json["alt_description"] == null ? null : json["alt_description"],
    urls: json["urls"] == null ? null : Urls.fromJson(json["urls"]),
    links: json["links"] == null ? null : PhotoLinks.fromJson(json["links"]),
    categories: json["categories"] == null ? null : List<dynamic>.from(json["categories"].map((x) => x)),
    likes: json["likes"] == null ? null : json["likes"],
    likedByUser: json["liked_by_user"] == null ? null : json["liked_by_user"],
    currentUserCollections: json["current_user_collections"] == null ? null : List<dynamic>.from(json["current_user_collections"].map((x) => x)),
    sponsorship: json["sponsorship"],
    user: json["user"] == null ? null : User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
    "promoted_at": promotedAt == null ? null : promotedAt?.toIso8601String(),
    "width": width == null ? null : width,
    "height": height == null ? null : height,
    "color": color == null ? null : color,
    "blur_hash": blurHash == null ? null : blurHash,
    "description": description == null ? null : description,
    "alt_description": altDescription == null ? null : altDescription,
    "urls": urls == null ? null : urls?.toJson(),
    "links": links == null ? null : links?.toJson(),
    "categories": categories == null ? null : List<dynamic>.from(categories!.map((x) => x)),
    "likes": likes == null ? null : likes,
    "liked_by_user": likedByUser == null ? null : likedByUser,
    "current_user_collections": currentUserCollections == null ? null : List<dynamic>.from(currentUserCollections!.map((x) => x)),
    "sponsorship": sponsorship,
    "user": user == null ? null : user!.toJson(),
  };
}

class PhotoLinks {
  PhotoLinks({
    this.self,
    this.html,
    this.download,
    this.downloadLocation,
  });

  final String? self;
  final String? html;
  final String? download;
  final String? downloadLocation;

  factory PhotoLinks.fromJson(Map<String, dynamic> json) => PhotoLinks(
    self: json["self"] == null ? null : json["self"],
    html: json["html"] == null ? null : json["html"],
    download: json["download"] == null ? null : json["download"],
    downloadLocation: json["download_location"] == null ? null : json["download_location"],
  );

  Map<String, dynamic> toJson() => {
    "self": self == null ? null : self,
    "html": html == null ? null : html,
    "download": download == null ? null : download,
    "download_location": downloadLocation == null ? null : downloadLocation,
  };
}

class Tag {
  Tag({
    this.type,
    this.title,
  });

  final String? type;
  final String? title;

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
    type: json["type"] == null ? null : json["type"],
    title: json["title"] == null ? null : json["title"],
  );

  Map<String, dynamic> toJson() => {
    "type": type == null ? null : type,
    "title": title == null ? null : title,
  };
}
