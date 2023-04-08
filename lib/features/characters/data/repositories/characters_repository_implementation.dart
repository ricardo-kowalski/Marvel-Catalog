import 'package:marvel_catalog/features/characters/data/datasource/characters/characters_datasource.dart';
import 'package:marvel_catalog/features/characters/domain/entities/character.dart';

import '../../domain/entities/character_data_wrapper.dart';
import '../../domain/repositories/characters_repository.dart';
import '../models/character_model.dart';

class CharactersRepositoryImplementation implements ICharactersRepository {
  final ICharactersDatasource datasource;

  CharactersRepositoryImplementation(
    this.datasource,
  );

  @override
  Future<CharacterDataWrapper> fetch({
    int? limit,
    int? offset,
  }) async {
    // try {
    final result = await datasource.fetchCharacters(
      limit: limit,
      offset: offset,
    );
    return result.toEntity();
    // } on ServerException {
    //   return Left(ServerFailure());
    // }
  }
}
