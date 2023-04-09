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

  @override
  Future<Result<CharacterDataWrapper, Exception>> fetch({
    int? limit,
    int? offset,
  }) async {
    final result = await datasource.fetchCharacters(
      limit: limit,
      offset: offset,
    );
    return result.map((success) => success.toEntity());
  }
}
