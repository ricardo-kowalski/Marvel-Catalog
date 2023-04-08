import 'package:marvel_catalog/features/characters/domain/entities/character_url.dart';

class CharacterUrlModel {
  String? type;
  String? url;

  CharacterUrlModel({
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
}