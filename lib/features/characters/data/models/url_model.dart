<<<<<<< HEAD
import 'package:equatable/equatable.dart';

import 'package:marvel_catalog/features/characters/domain/entities/character_url.dart';

class CharacterUrlModel extends Equatable {
  final String? type;
  final String? url;

  const CharacterUrlModel({
=======
import 'package:marvel_catalog/features/characters/domain/entities/character_url.dart';

class CharacterUrlModel {
  String? type;
  String? url;

  CharacterUrlModel({
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
    this.type,
    this.url,
  });

  factory CharacterUrlModel.fromJson(Map<String, dynamic> json) {
    return CharacterUrlModel(
      type: json['type'],
      url: json['url'],
    );
  }
  factory CharacterUrlModel.fromEntity(CharacterUrl entity) {
    return CharacterUrlModel(
      type: entity.type,
      url: entity.url,
    );
  }

  CharacterUrl toEntity() => CharacterUrl(
        type: type,
        url: url,
      );
<<<<<<< HEAD

  @override
  List<Object?> get props => [type, url];
=======
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
}
