import 'package:equatable/equatable.dart';

class CharacterImage extends Equatable {
  final String? path;
  final String? extension;

  const CharacterImage({this.path, this.extension});

  String get full => '$path.$extension';

  @override
  List<Object?> get props => [path, extension];
}
