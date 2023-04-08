import 'package:marvel_catalog/features/characters/domain/entities/character_image.dart';
import 'package:marvel_catalog/features/characters/domain/entities/character_url.dart';

class Character {
  final int? id;
  final String? name;
  final String? description;
  // final DateTime? modified;
  final CharacterImage? thumbnail;
  final List<CharacterUrl>? urls;
  final String? resourceUri;

  Character({
    this.id,
    this.name,
    this.description,
    // this.modified,
    this.thumbnail,
    this.resourceUri,
    this.urls,
  });
}
