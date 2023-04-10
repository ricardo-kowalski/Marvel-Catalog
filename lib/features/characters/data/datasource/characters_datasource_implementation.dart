import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:http/http.dart' as http;
import 'package:marvel_catalog/core/app_exception.dart';
import 'package:marvel_catalog/features/characters/data/models/character_model.dart';
import 'package:result_dart/result_dart.dart';

import 'package:marvel_catalog/core/marvel_api/marvel_api.dart';
import 'package:marvel_catalog/features/characters/data/errors/no_connection_exception.dart';
import 'package:marvel_catalog/features/characters/data/errors/server_exception.dart';

import '../errors/character_not_found_exception.dart';
=======
import 'package:flutter/services.dart';
import 'package:marvel_catalog/core/marvel_api/marvel_api.dart';
import 'package:marvel_catalog/features/characters/data/errors/no_connection_exception.dart';
import 'package:marvel_catalog/features/characters/data/errors/server_exception.dart';
import 'package:result_dart/result_dart.dart';
import 'package:http/http.dart' as http;

>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
import '../errors/unknown_exception.dart';
import '../models/character_data_wrapper_model.dart';
import 'characters_datasource.dart';

class CharactersDatasourceImplementation implements ICharactersDatasource {
<<<<<<< HEAD
  final http.Client client;

  CharactersDatasourceImplementation(
    this.client,
  );
  // @override
  // Future<Result<CharacterDataWrapperModel, AppException>> fetchCharacters({
  //   int? limit,
  //   int? offset,
  // }) async {
  //   try {
  //     final httpResponse = await http.get(MarvelApi.uriRequest(
  //       limit: limit,
  //       offset: offset,
  //     ));
  //     switch (httpResponse.statusCode) {
  //       case 200:
  //         final dataModel = CharacterDataWrapperModel.fromJson(
  //             json.decode(httpResponse.body));
  //         return Success(dataModel);
  //       default:
  //         debugPrint(httpResponse.reasonPhrase);
  //         return Failure(ServerException(httpResponse.body));
  //     }
  //   } on SocketException {
  //     return const Failure(NoConnectionException());
  //   } catch (error) {
  //     return Failure(UnknownException(error.toString()));
  //   }
  // }
  @override
  Future<CharacterDataWrapperModel> fetchCharacters({
=======
  @override
  // final cliente = http.Client();
  Future<Result<CharacterDataWrapperModel, Exception>> fetchCharacters({
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
    int? limit,
    int? offset,
  }) async {
    try {
<<<<<<< HEAD
      final httpResponse = await client.get(MarvelApi.uriRequest(
=======
      final httpResponse = await http.get(MarvelApi.uriRequest(
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
        limit: limit,
        offset: offset,
      ));
      switch (httpResponse.statusCode) {
        case 200:
          final dataModel = CharacterDataWrapperModel.fromJson(
              json.decode(httpResponse.body));
<<<<<<< HEAD
          return dataModel;
        default:
          debugPrint(httpResponse.reasonPhrase);
          throw ServerException(httpResponse.body);
      }
    } on SocketException {
      throw const NoConnectionException();
    } catch (error) {
      throw UnknownException(error.toString());
    }
  }

  Future<Result<CharacterModel, AppException>> _getCharById(
    String id,
  ) async {
    try {
      final httpResponse = await client.get(
        MarvelApi.uriRequest(
          characterId: id,
        ),
      );
      switch (httpResponse.statusCode) {
        case 200:
          final dataWrapperModel = CharacterDataWrapperModel.fromJson(
              json.decode(httpResponse.body));
          final dataModel = dataWrapperModel.data?.results?.first;
          if (dataModel != null) return Success(dataModel);
          return const Failure(CharacterNotFoundException());
        case 404:
          debugPrint(httpResponse.reasonPhrase);
          return const Failure(CharacterNotFoundException());
=======
          return Success(dataModel);
        // case 409:
        //   debugPrint(httpResponse.reasonPhrase);
        //   return Failure(ServerException(httpResponse.body));
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
        default:
          debugPrint(httpResponse.reasonPhrase);
          return Failure(ServerException(httpResponse.body));
      }
    } on SocketException {
<<<<<<< HEAD
      return const Failure(NoConnectionException());
=======
      return Failure(NoConnectionException());
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
    } catch (error) {
      return Failure(UnknownException(error.toString()));
    }
  }
<<<<<<< HEAD

  @override
  Future<Result<List<CharacterModel>, AppException>> getByIdsList(
    List<String> ids,
  ) async {
    List<CharacterModel> models = [];

    for (var id in ids) {
      final char = await _getCharById(id).getOrThrow();
      models.add(char);
    }
    return Success(models);
  }
=======
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
}
