import 'package:marvel_catalog/core/core.dart';
import 'package:result_dart/result_dart.dart';

import '../domain.dart';

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
