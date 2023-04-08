import 'package:marvel_catalog/features/characters/domain/entities/character.dart';

class CharacterDataContainer {
  final int? offset;
  final int? limit;
  final int? total;
  final int? count;
  final List<Character>? results;

  CharacterDataContainer({
    this.offset,
    this.limit,
    this.total,
    this.count,
    this.results,
  });
}
