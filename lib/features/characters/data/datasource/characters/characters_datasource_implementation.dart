import 'dart:convert';

import 'package:marvel_catalog/core/marvel_api/marvel_api.dart';
import 'package:marvel_catalog/features/characters/data/models/character_model.dart';
import '../../../domain/entities/character.dart';
import '../../../domain/helpers/domain_error.dart';
import '../../http/http_error.dart';
import '../../models/character_data_wrapper_model.dart';
import 'characters_datasource.dart';
import 'package:http/http.dart' as http;

class CharactersDatasourceImplementation implements ICharactersDatasource {
  @override
  // final cliente = http.Client();
  Future<CharacterDataWrapperModel> fetchCharacters({
    int? limit,
    int? offset,
  }) async {
    // final response = await client.get(MarvelApi.fetchCharacters());
    // if (response.statusCode == 200) {
    //   final model = CharacterModel.fromJson(json.decode(response.body));
    //   print(model);
    //   return model;
    // } else {
    //   // throw ServerException();
    //   throw Exception();
    // }
    try {
      final httpResponse = await http.get(MarvelApi.uriRequest(
        limit: limit,
        offset: offset,
      ));
      // return httpResponse
      //     .map<Character>((json) => CharacterModel.fromJson(json).toEntity())
      //     .toList();
      final model =
          CharacterDataWrapperModel.fromJson(json.decode(httpResponse.body));
      // print(model);
      return model;
    } on HttpError catch (error) {
      throw error == HttpError.forbidden
          ? DomainError.accessDenied
          : DomainError.unexpected;
    }
  }
}
