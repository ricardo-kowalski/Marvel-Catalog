import 'package:marvel_catalog/core/app_exception.dart';
import 'package:marvel_catalog/features/characters/domain/entities/character.dart';
import 'package:result_dart/result_dart.dart';

import '../../domain/entities/character_data_wrapper.dart';
import '../../domain/repositories/characters_repository.dart';
import '../datasource/characters_datasource.dart';
import '../models/character_model.dart';

class CharactersRepositoryImplementation implements ICharactersRepository {
  final ICharactersDatasource datasource;

  CharactersRepositoryImplementation(
    this.datasource,
  );

  // @override
  // Future<Result<CharacterDataWrapper, AppException>> fetch({
  //   int? limit,
  //   int? offset,
  // }) async {
  //   final result = await datasource.fetchCharacters(
  //     limit: limit,
  //     offset: offset,
  //   );
  //   return result.map((success) => success.toEntity());
  // }

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
