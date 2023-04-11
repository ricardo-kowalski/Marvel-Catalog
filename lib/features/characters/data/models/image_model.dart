import 'package:equatable/equatable.dart';

import '../../domain/domain.dart';

class CharacterImageModel extends Equatable {
  final String? path;
  final String? extension;

  const CharacterImageModel({
    this.path,
    this.extension,
  });

  factory CharacterImageModel.fromJson(Map<String, dynamic> json) {
    return CharacterImageModel(
      path: json['path'],
      extension: json['extension'],
    );
  }
  factory CharacterImageModel.fromEntity(CharacterImage entity) {
    return CharacterImageModel(
      path: entity.path,
      extension: entity.extension,
    );
  }

  CharacterImage toEntity() => CharacterImage(
        path: path,
        extension: extension,
      );

  @override
  List<Object?> get props => [path, extension];
}
