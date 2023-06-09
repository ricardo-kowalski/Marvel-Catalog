import 'package:equatable/equatable.dart';
import 'package:marvel_catalog/features/characters/domain/entities/entities.dart';

import 'models.dart';

class CharacterDataContainerModel extends Equatable {
  final int? offset;
  final int? limit;
  final int? total;
  final int? count;
  final List<CharacterModel>? results;

  const CharacterDataContainerModel({
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
}
