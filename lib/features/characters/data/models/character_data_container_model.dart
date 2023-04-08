import 'package:marvel_catalog/features/characters/data/models/character_model.dart';
import 'package:marvel_catalog/features/characters/domain/entities/character_data_container.dart';

class CharacterDataContainerModel {
  int? offset;
  int? limit;
  int? total;
  int? count;
  List<CharacterModel>? results;

  CharacterDataContainerModel({
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
}
