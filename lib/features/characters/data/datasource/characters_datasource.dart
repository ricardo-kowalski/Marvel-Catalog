import 'package:marvel_catalog/core/core.dart';
import 'package:result_dart/result_dart.dart';

import '../models/models.dart';

abstract class ICharactersDatasource {
  Future<CharacterDataWrapperModel> fetchCharacters({
    int? limit,
    int? offset,
  });

  Future<Result<List<CharacterModel>, AppException>> getByIdsList(
    List<String> ids,
  );
}
