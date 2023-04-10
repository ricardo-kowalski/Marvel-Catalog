<<<<<<< HEAD
import 'package:equatable/equatable.dart';

import 'package:marvel_catalog/features/characters/data/models/character_model.dart';
import 'package:marvel_catalog/features/characters/domain/entities/character_data_container.dart';

class CharacterDataContainerModel extends Equatable {
  final int? offset;
  final int? limit;
  final int? total;
  final int? count;
  final List<CharacterModel>? results;

  const CharacterDataContainerModel({
=======
import 'package:marvel_catalog/features/characters/data/models/character_model.dart';
import 'package:marvel_catalog/features/characters/domain/entities/character_data_container.dart';

class CharacterDataContainerModel {
  int? offset;
  int? limit;
  int? total;
  int? count;
  List<CharacterModel>? results;

  CharacterDataContainerModel({
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
    this.offset,
    this.limit,
    this.total,
    this.count,
    this.results,
  });

  factory CharacterDataContainerModel.fromJson(Map<String, dynamic> json) {
    return CharacterDataContainerModel(
      offset: json['offset'],
      limit: json['limit'],
      total: json['total'],
      count: json['count'],
      results: json['results'] != null
          ? json['results']
              .map<CharacterModel>(
                  (urlJson) => CharacterModel.fromJson(urlJson))
              .toList()
          : <CharacterModel>[],
    );
  }
  factory CharacterDataContainerModel.fromEntity(
      CharacterDataContainer entity) {
    return CharacterDataContainerModel(
      offset: entity.offset,
      limit: entity.limit,
      total: entity.total,
      count: entity.count,
      results: (entity.results != null && entity.results!.isNotEmpty)
          ? entity.results!
              .map<CharacterModel>(
                  (answer) => CharacterModel.fromEntity(answer))
              .toList()
          : null,
    );
  }

  CharacterDataContainer toEntity() => CharacterDataContainer(
        offset: offset,
        limit: limit,
        total: total,
        count: count,
        results: results?.map((e) => e.toEntity()).toList(),
      );
<<<<<<< HEAD

  @override
  List<Object?> get props {
    return [
      offset,
      limit,
      total,
      count,
      results,
    ];
  }
=======
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
}
