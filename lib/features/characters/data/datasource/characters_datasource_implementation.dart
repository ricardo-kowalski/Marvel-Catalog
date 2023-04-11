import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:marvel_catalog/core/core.dart';
import 'package:result_dart/result_dart.dart';

import '../errors/errors.dart';
import '../models/models.dart';
import 'characters_datasource.dart';

class CharactersDatasourceImplementation implements ICharactersDatasource {
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
    int? limit,
    int? offset,
  }) async {
    try {
      final httpResponse = await client.get(MarvelApi.uriRequest(
        limit: limit,
        offset: offset,
      ));
      switch (httpResponse.statusCode) {
        case 200:
          final dataModel = CharacterDataWrapperModel.fromJson(
              json.decode(httpResponse.body));
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
        default:
          debugPrint(httpResponse.reasonPhrase);
          return Failure(ServerException(httpResponse.body));
      }
    } on SocketException {
      return const Failure(NoConnectionException());
    } catch (error) {
      return Failure(UnknownException(error.toString()));
    }
  }

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
}
