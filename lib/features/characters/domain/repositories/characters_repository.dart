<<<<<<< HEAD
import 'package:marvel_catalog/core/app_exception.dart';
=======
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
import 'package:result_dart/result_dart.dart';

import '../entities/character.dart';
import '../entities/character_data_wrapper.dart';

abstract class ICharactersRepository {
<<<<<<< HEAD
  Future<Result<CharacterDataWrapper, AppException>> fetch({
    int? limit,
    int? offset,
  });

  Future<Result<List<Character>, AppException>> getByIdsList(List<String> ids);
=======
  Future<Result<CharacterDataWrapper, Exception>> fetch({
    int? limit,
    int? offset,
  });
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
}
