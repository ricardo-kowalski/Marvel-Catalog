import 'package:marvel_catalog/features/characters/domain/entities/character_data_container.dart';

class CharacterDataWrapper {
  final int? code;
  final String? status;
  final CharacterDataContainer? data;

  CharacterDataWrapper({
    this.code,
    this.status,
    this.data,
  });
}
