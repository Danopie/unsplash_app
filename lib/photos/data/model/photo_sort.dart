import 'package:equatable/equatable.dart';

class PhotoSort extends Equatable {
  final String title;
  final String query;

  const PhotoSort(this.title, this.query);

  @override
  List<Object> get props => [title, query];
}
