import 'package:marvel_catalog/core/app_exception.dart';
import 'package:result_dart/result_dart.dart';

import '../entities/character.dart';
import '../entities/character_data_wrapper.dart';

abstract class ICharactersRepository {
  Future<Result<CharacterDataWrapper, AppException>> fetch({
    int? limit,
    int? offset,
  });

  Future<Result<List<Character>, AppException>> getByIdsList(List<String> ids);
}
