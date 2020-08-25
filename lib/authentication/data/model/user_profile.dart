import 'package:primitive_type_parser/primitive_type_parser.dart';
import 'package:unsplash_app/authentication/data/model/profile_image.dart';
import 'package:unsplash_app/authentication/data/model/badge.dart';
import 'package:unsplash_app/authentication/data/model/links.dart';

class UserProfile {
  final String id;
  final String updated_at;
  final String username;
  final String name;
  final String first_name;
  final String last_name;
  final String instagram_username;
  final String twitter_username;
  final Object portfolio_url;
  final String bio;
  final String location;
  final int total_likes;
  final int total_photos;
  final int total_collections;
  final bool followed_by_user;
  final int followers_count;
  final int following_count;
  final int downloads;
  final Profile_image profile_image;
  final Badge badge;
  final Links links;

	UserProfile.fromJson(Map<String, dynamic> map): 
		id = parseString(map["id"]),
		updated_at = parseString(map["updated_at"]),
		username = parseString(map["username"]),
		name = parseString(map["name"]),
		first_name = parseString(map["first_name"]),
		last_name = parseString(map["last_name"]),
		instagram_username = parseString(map["instagram_username"]),
		twitter_username = parseString(map["twitter_username"]),
		portfolio_url = map["portfolio_url"],
		bio = parseString(map["bio"]),
		location = parseString(map["location"]),
		total_likes = parseInt(map["total_likes"]),
		total_photos = parseInt(map["total_photos"]),
		total_collections = parseInt(map["total_collections"]),
		followed_by_user = parseBool(map["followed_by_user"]),
		followers_count = parseInt(map["followers_count"]),
		following_count = parseInt(map["following_count"]),
		downloads = parseInt(map["downloads"]),
		profile_image = map["profile_image"] == null ? null :  Profile_image.fromJson(map["profile_image"]),
		badge = map["badge"] == null ? null :  Badge.fromJson(map["badge"]),
		links = map["links"] == null ? null :  Links.fromJson(map["links"]);

	Map<String, dynamic> toJson() {
		final map = Map<String, dynamic>();
		map['id'] = id;
		map['updated_at'] = updated_at;
		map['username'] = username;
		map['name'] = name;
		map['first_name'] = first_name;
		map['last_name'] = last_name;
		map['instagram_username'] = instagram_username;
		map['twitter_username'] = twitter_username;
		map['portfolio_url'] = portfolio_url;
		map['bio'] = bio;
		map['location'] = location;
		map['total_likes'] = total_likes;
		map['total_photos'] = total_photos;
		map['total_collections'] = total_collections;
		map['followed_by_user'] = followed_by_user;
		map['followers_count'] = followers_count;
		map['following_count'] = following_count;
		map['downloads'] = downloads;
		map['profile_image'] = profile_image == null ? null : profile_image.toJson();
		map['badge'] = badge == null ? null : badge.toJson();
		map['links'] = links == null ? null : links.toJson();
		return map;
	}
}
