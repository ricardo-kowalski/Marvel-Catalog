<<<<<<< HEAD
import 'package:equatable/equatable.dart';

import 'package:marvel_catalog/features/characters/domain/entities/character_image.dart';
import 'package:marvel_catalog/features/characters/domain/entities/character_url.dart';

class Character extends Equatable {
  final int? id;
  final String? name;
  final String? description;
=======
import 'package:marvel_catalog/features/characters/domain/entities/character_image.dart';
import 'package:marvel_catalog/features/characters/domain/entities/character_url.dart';

class Character {
  final int? id;
  final String? name;
  final String? description;
  // final DateTime? modified;
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
  final CharacterImage? thumbnail;
  final List<CharacterUrl>? urls;
  final String? resourceUri;

<<<<<<< HEAD
  const Character({
    this.id,
    this.name,
    this.description,
=======
  Character({
    this.id,
    this.name,
    this.description,
    // this.modified,
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
    this.thumbnail,
    this.resourceUri,
    this.urls,
  });
<<<<<<< HEAD

  @override
  List<Object?> get props {
    return [
      id,
      name,
      description,
      thumbnail,
      urls,
      resourceUri,
    ];
  }
=======
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
}
