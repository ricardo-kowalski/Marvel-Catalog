import 'package:marvel_catalog/core/core.dart';
import 'package:result_dart/result_dart.dart';

import '../../domain/domain.dart';
import '../datasource/datasource.dart';

class CharactersRepositoryImplementation implements ICharactersRepository {
  final ICharactersDatasource datasource;

  CharactersRepositoryImplementation(
    this.datasource,
  );

  @override
  Future<Result<CharacterDataWrapper, AppException>> fetch({
    int? limit,
    int? offset,
  }) async {
    try {
      final result = await datasource.fetchCharacters(
        limit: limit,
        offset: offset,
      );
      return Success(result.toEntity());
    } on AppException catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<List<Character>, AppException>> getByIdsList(
      List<String> ids) async {
    try {
      final results = await datasource.getByIdsList(ids);
      return Success(
        results.getOrThrow().map((success) => success.toEntity()).toList(),
      );
    } on AppException catch (e) {
      return Failure(e);
    }
  }
}
