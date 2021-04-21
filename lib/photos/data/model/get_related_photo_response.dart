import 'dart:convert';

import 'package:unsplash_app/photos/data/model/photo.dart';

GetRelatedPhotoResponse getRelatedPhotoResponseFromJson(String str) =>
    GetRelatedPhotoResponse.fromJson(json.decode(str));

String getRelatedPhotoResponseToJson(GetRelatedPhotoResponse data) =>
    json.encode(data.toJson());

class GetRelatedPhotoResponse {
  GetRelatedPhotoResponse({
    this.total,
    required this.results,
  });

  final int? total;
  final List<Photo> results;

  factory GetRelatedPhotoResponse.fromJson(Map<String, dynamic> json) =>
      GetRelatedPhotoResponse(
        total: json["total"] == null ? null : json["total"],
        results: json["results"] == null
            ? <Photo>[]
            : List<Photo>.from(json["results"].map((x) => Photo.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "total": total == null ? null : total,
        "results": results == null
            ? null
            : List<dynamic>.from(results.map((x) => x.toJson())),
      };
}
