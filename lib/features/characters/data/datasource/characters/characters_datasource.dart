import 'package:marvel_catalog/features/characters/data/models/character_data_wrapper_model.dart';
import 'package:marvel_catalog/features/characters/data/models/character_model.dart';

abstract class ICharactersDatasource {
  Future<CharacterDataWrapperModel> fetchCharacters({
    int? limit,
    int? offset,
  });
}
