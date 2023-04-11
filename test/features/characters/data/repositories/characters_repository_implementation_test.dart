import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_catalog/core/errors/app_exception.dart';
import 'package:marvel_catalog/features/characters/data/datasource/characters_datasource.dart';
import 'package:marvel_catalog/features/characters/data/errors/no_connection_exception.dart';
import 'package:marvel_catalog/features/characters/data/errors/server_exception.dart';
import 'package:marvel_catalog/features/characters/data/errors/unknown_exception.dart';
import 'package:marvel_catalog/features/characters/data/repositories/characters_repository_implementation.dart';
import 'package:marvel_catalog/features/characters/domain/entities/character_data_wrapper.dart';
import 'package:mocktail/mocktail.dart';
import 'package:result_dart/result_dart.dart';

import '../../../mocks/character_data_wrapper_mock.dart';

class MockCharactersDatasource extends Mock implements ICharactersDatasource {}

void main() {
  late CharactersRepositoryImplementation repository;
  late ICharactersDatasource datasource;

  setUp(() {
    datasource = MockCharactersDatasource();
    repository = CharactersRepositoryImplementation(datasource);
  });

  test('should return a CharacterDataWrapper when calls the datasource',
      () async {
    when(() => datasource.fetchCharacters())
        .thenAnswer((_) async => tCharacterDataWrapperModel);

    final result = await repository.fetch();

    expect(
      result,
      Result<CharacterDataWrapper, AppException>.success(tCharacterDataWrapper),
    );
    verify(() => datasource.fetchCharacters()).called(1);
  });

  test('should return a NoConnectionException when calls the datasource',
      () async {
    when(() => datasource.fetchCharacters())
        .thenAnswer((_) async => throw const NoConnectionException());

    final result = await repository.fetch();

    expect(
      result,
      Result<CharacterDataWrapper, AppException>.failure(
          const NoConnectionException()),
    );
    verify(() => datasource.fetchCharacters()).called(1);
  });

  const tErrorMessage = 'Erro de servidor';
  test('should return a ServerException when calls the datasource', () async {
    when(() => datasource.fetchCharacters())
        .thenAnswer((_) async => throw const ServerException(tErrorMessage));

    final result = await repository.fetch();

    expect(
      result,
      Result<CharacterDataWrapper, AppException>.failure(
          const ServerException(tErrorMessage)),
    );
    verify(() => datasource.fetchCharacters()).called(1);
  });
  test('should return a UnknownException when calls the datasource', () async {
    when(() => datasource.fetchCharacters())
        .thenAnswer((_) async => throw const UnknownException(tErrorMessage));

    final result = await repository.fetch();

    expect(
      result,
      Result<CharacterDataWrapper, AppException>.failure(
          const UnknownException(tErrorMessage)),
    );
    verify(() => datasource.fetchCharacters()).called(1);
  });
}
