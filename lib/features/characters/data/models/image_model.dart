<<<<<<< HEAD
import 'package:equatable/equatable.dart';

import 'package:marvel_catalog/features/characters/domain/entities/character_image.dart';

class CharacterImageModel extends Equatable {
  final String? path;
  final String? extension;

  const CharacterImageModel({
=======
import 'package:marvel_catalog/features/characters/domain/entities/character_image.dart';

class CharacterImageModel {
  final String? path;
  final String? extension;

  CharacterImageModel({
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
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
<<<<<<< HEAD

  @override
  List<Object?> get props => [path, extension];
=======
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
}
