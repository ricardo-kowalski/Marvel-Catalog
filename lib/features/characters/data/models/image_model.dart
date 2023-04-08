import 'package:marvel_catalog/features/characters/domain/entities/character_image.dart';

class CharacterImageModel {
  final String? path;
  final String? extension;

  CharacterImageModel({
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
}
