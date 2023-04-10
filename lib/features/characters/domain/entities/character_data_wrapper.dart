<<<<<<< HEAD
import 'package:equatable/equatable.dart';

import 'package:marvel_catalog/features/characters/domain/entities/character_data_container.dart';

class CharacterDataWrapper extends Equatable {
=======
import 'package:marvel_catalog/features/characters/domain/entities/character_data_container.dart';

class CharacterDataWrapper {
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
  final int? code;
  final String? status;
  final CharacterDataContainer? data;

<<<<<<< HEAD
  const CharacterDataWrapper({
=======
  CharacterDataWrapper({
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
    this.code,
    this.status,
    this.data,
  });
<<<<<<< HEAD

  @override
  List<Object?> get props => [
        code,
        status,
        data,
      ];
=======
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
}
