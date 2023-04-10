import 'package:marvel_catalog/core/app_exception.dart';
import 'package:result_dart/result_dart.dart';

import '../entities/character_data_wrapper.dart';
import '../repositories/characters_repository.dart';

class FetchCharactersUsecase {
  final ICharactersRepository repository;

  FetchCharactersUsecase(this.repository);

  Future<Result<CharacterDataWrapper, AppException>> call({
    int? limit,
    int? offset,
  }) async {
    return await repository.fetch(
      limit: limit,
      offset: offset,
    );
  }
}
