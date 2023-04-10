import 'package:equatable/equatable.dart';

import 'package:marvel_catalog/features/characters/domain/entities/character_image.dart';
import 'package:marvel_catalog/features/characters/domain/entities/character_url.dart';

class Character extends Equatable {
  final int? id;
  final String? name;
  final String? description;
  final CharacterImage? thumbnail;
  final List<CharacterUrl>? urls;
  final String? resourceUri;

  const Character({
    this.id,
    this.name,
    this.description,
    this.thumbnail,
    this.resourceUri,
    this.urls,
  });

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
}
