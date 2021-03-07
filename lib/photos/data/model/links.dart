import 'package:equatable/equatable.dart';
import 'package:primitive_type_parser/primitive_type_parser.dart';

class Links extends Equatable {
  final String? self;
  final String? html;
  final String? download;
  final String? download_location;

  Links.fromJson(Map<String, dynamic> map)
      : self = parseString(map["self"]),
        html = parseString(map["html"]),
        download = parseString(map["download"]),
        download_location = parseString(map["download_location"]);

  Map<String, dynamic> toJson() {
    final map = Map<String, dynamic>();
    map['self'] = self;
    map['html'] = html;
    map['download'] = download;
    map['download_location'] = download_location;
    return map;
  }

  @override
  List<Object?> get props => [self, html, download, download_location];

  @override
  bool get stringify => true;
}
