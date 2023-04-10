<<<<<<< HEAD
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:marvel_catalog/features/characters/domain/entities/character.dart';

class CharacterDataContainer extends Equatable {
=======
import 'package:marvel_catalog/features/characters/domain/entities/character.dart';

class CharacterDataContainer {
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
  final int? offset;
  final int? limit;
  final int? total;
  final int? count;
  final List<Character>? results;

<<<<<<< HEAD
  const CharacterDataContainer({
=======
  CharacterDataContainer({
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
    this.offset,
    this.limit,
    this.total,
    this.count,
    this.results,
  });
<<<<<<< HEAD

  @override
  List<Object?> get props {
    return [
      offset,
      limit,
      total,
      count,
      results,
    ];
  }
=======
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
}
