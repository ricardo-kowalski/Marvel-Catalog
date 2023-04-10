import 'package:marvel_catalog/core/app_exception.dart';
import 'package:marvel_catalog/features/characters/data/models/character_data_wrapper_model.dart';
import 'package:marvel_catalog/features/characters/data/models/character_model.dart';
import 'package:result_dart/result_dart.dart';

abstract class ICharactersDatasource {
  Future<CharacterDataWrapperModel> fetchCharacters({
    int? limit,
    int? offset,
  });

  Future<Result<List<CharacterModel>, AppException>> getByIdsList(
    List<String> ids,
  );
}
