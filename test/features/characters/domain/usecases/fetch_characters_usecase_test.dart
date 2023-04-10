import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_catalog/features/characters/data/errors/no_connection_exception.dart';
import 'package:marvel_catalog/features/characters/data/errors/server_exception.dart';
import 'package:marvel_catalog/features/characters/data/errors/unknown_exception.dart';
import 'package:marvel_catalog/features/characters/domain/repositories/characters_repository.dart';
import 'package:marvel_catalog/features/characters/domain/usecases/fetch_characters_usecase.dart';
import 'package:mocktail/mocktail.dart';
import 'package:result_dart/functions.dart';
import 'package:result_dart/result_dart.dart';

import '../../../mocks/character_data_wrapper_mock.dart';

class MockCharactersRepository extends Mock implements ICharactersRepository {}

void main() {
  late FetchCharactersUsecase usecase;
  late ICharactersRepository repository;

  setUp(() {
    repository = MockCharactersRepository();
    usecase = FetchCharactersUsecase(repository);
  });

  test('should fetch a CharacterDataWrapper from repository', () async {
    when(() => repository.fetch()).thenAnswer(
      (_) async => Result.success(tCharacterDataWrapper),
    );

    final result = await usecase();
    expect(result, Result.success(tCharacterDataWrapper));
    expect(result, successOf(tCharacterDataWrapper));

    verify(() => repository.fetch()).called(1);
  });

  const tErrorMessage = 'Erro de servidor';

  test('should return a NoConnectionException when don\'t succeed', () async {
    when(() => repository.fetch())
        .thenAnswer((_) async => Result.failure(const NoConnectionException()));

    final result = await usecase();

    expect(
      result,
      Result.failure(
        const NoConnectionException(),
      ),
    );
    verify(() => repository.fetch()).called(1);
  });

  test('should return a ServerException  when don\'t succeed', () async {
    when(() => repository.fetch()).thenAnswer(
        (_) async => Result.failure(const ServerException(tErrorMessage)));

    final result = await usecase();

    expect(
      result,
      Result.failure(
        const ServerException(tErrorMessage),
      ),
    );
    verify(() => repository.fetch()).called(1);
  });
  test('should return a UnknownException  when don\'t succeed', () async {
    when(() => repository.fetch()).thenAnswer(
        (_) async => Result.failure(const UnknownException(tErrorMessage)));

    final result = await usecase();

    expect(
      result,
      Result.failure(
        const UnknownException(tErrorMessage),
      ),
    );
    verify(() => repository.fetch()).called(1);
  });
}
