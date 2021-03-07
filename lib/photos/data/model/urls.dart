import 'package:equatable/equatable.dart';
import 'package:primitive_type_parser/primitive_type_parser.dart';

class Urls extends Equatable {
  final String? raw;
  final String? full;
  final String? regular;
  final String? small;
  final String? thumb;

  Urls.fromJson(Map<String, dynamic> map)
      : raw = parseString(map["raw"]),
        full = parseString(map["full"]),
        regular = parseString(map["regular"]),
        small = parseString(map["small"]),
        thumb = parseString(map["thumb"]);

  Map<String, dynamic> toJson() {
    final map = Map<String, dynamic>();
    map['raw'] = raw;
    map['full'] = full;
    map['regular'] = regular;
    map['small'] = small;
    map['thumb'] = thumb;
    return map;
  }

  @override
  List<Object?> get props => [raw, full, regular, small, thumb];

  @override
  bool get stringify => true;
}
