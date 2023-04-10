<<<<<<< HEAD
import 'package:marvel_catalog/core/app_exception.dart';
=======
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
import 'package:result_dart/result_dart.dart';

import '../entities/character_data_wrapper.dart';
import '../repositories/characters_repository.dart';

class FetchCharactersUsecase {
  final ICharactersRepository repository;

  FetchCharactersUsecase(this.repository);

<<<<<<< HEAD
  Future<Result<CharacterDataWrapper, AppException>> call({
=======
  Future<Result<CharacterDataWrapper, Exception>> get({
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
    int? limit,
    int? offset,
  }) async {
    return await repository.fetch(
      limit: limit,
      offset: offset,
    );
  }
}
