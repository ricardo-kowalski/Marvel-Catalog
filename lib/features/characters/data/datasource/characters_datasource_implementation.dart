import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marvel_catalog/core/marvel_api/marvel_api.dart';
import 'package:marvel_catalog/features/characters/data/errors/no_connection_exception.dart';
import 'package:marvel_catalog/features/characters/data/errors/server_exception.dart';
import 'package:result_dart/result_dart.dart';
import 'package:http/http.dart' as http;

import '../errors/unknown_exception.dart';
import '../models/character_data_wrapper_model.dart';
import 'characters_datasource.dart';

class CharactersDatasourceImplementation implements ICharactersDatasource {
  @override
  // final cliente = http.Client();
  Future<Result<CharacterDataWrapperModel, Exception>> fetchCharacters({
    int? limit,
    int? offset,
  }) async {
    try {
      final httpResponse = await http.get(MarvelApi.uriRequest(
        limit: limit,
        offset: offset,
      ));
      switch (httpResponse.statusCode) {
        case 200:
          final dataModel = CharacterDataWrapperModel.fromJson(
              json.decode(httpResponse.body));
          return Success(dataModel);
        // case 409:
        //   debugPrint(httpResponse.reasonPhrase);
        //   return Failure(ServerException(httpResponse.body));
        default:
          debugPrint(httpResponse.reasonPhrase);
          return Failure(ServerException(httpResponse.body));
      }
    } on SocketException {
      return Failure(NoConnectionException());
    } catch (error) {
      return Failure(UnknownException(error.toString()));
    }
  }
}
