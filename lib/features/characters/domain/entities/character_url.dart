import 'package:equatable/equatable.dart';

class CharacterUrl extends Equatable {
  final String? type;
  final String? url;

  const CharacterUrl({this.type, this.url});

  @override
  List<Object?> get props => [type, url];
}
