<<<<<<< HEAD
import 'package:marvel_catalog/core/app_exception.dart';
=======
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
import 'package:marvel_catalog/features/characters/data/models/character_data_wrapper_model.dart';
import 'package:marvel_catalog/features/characters/data/models/character_model.dart';
import 'package:result_dart/result_dart.dart';

abstract class ICharactersDatasource {
<<<<<<< HEAD
  Future<CharacterDataWrapperModel> fetchCharacters({
    int? limit,
    int? offset,
  });

  Future<Result<List<CharacterModel>, AppException>> getByIdsList(
    List<String> ids,
  );
=======
  Future<Result<CharacterDataWrapperModel, Exception>> fetchCharacters({
    int? limit,
    int? offset,
  });
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
}
