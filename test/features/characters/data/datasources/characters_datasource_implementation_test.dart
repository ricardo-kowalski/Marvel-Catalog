import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_catalog/core/marvel_api/marvel_api.dart';
import 'package:marvel_catalog/features/characters/data/datasource/characters_datasource_implementation.dart';
import 'package:mocktail/mocktail.dart';
import 'package:http/http.dart' as http;

import '../../../mocks/character_data_wrapper_mock.dart';

class MockClient extends Mock implements http.Client {}

void main() {
  late CharactersDatasourceImplementation datasource;
  late http.Client client;

  setUp(() {
    client = MockClient();
    datasource = CharactersDatasourceImplementation(
      client,
    );
    registerFallbackValue(Uri());
  });

  void successMock() {
    when(() => client.get(any())).thenAnswer(
      (_) async => http.Response(tCharacterDataWrapperJson, 200),
    );
  }

  test('should call the get method with correct url', () async {
    // Arrange
    successMock();
    // Act
    await datasource.fetchCharacters(limit: 10);
    // Assert
    verify(() => client.get(MarvelApi.uriRequest(limit: 10))).called(1);
  });

  test('should return a CharacterDataWrapperModel when the call is successful',
      () async {
    successMock();

    final result = await datasource.fetchCharacters(limit: 10);

    // expect(result, tCharacterDataWrapperModel);
    expect(result.code, tCharacterDataWrapperModel.code);
    expect(result.status, tCharacterDataWrapperModel.status);
  });
}
