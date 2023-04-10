<<<<<<< HEAD
import 'package:equatable/equatable.dart';

import 'package:marvel_catalog/features/characters/data/models/character_data_container_model.dart';
import 'package:marvel_catalog/features/characters/domain/entities/character_data_container.dart';

import '../../domain/entities/character_data_wrapper.dart';

class CharacterDataWrapperModel extends Equatable {
=======
import 'package:marvel_catalog/features/characters/data/models/character_data_container_model.dart';
import 'package:marvel_catalog/features/characters/domain/entities/character_data_container.dart';
import '../../domain/entities/character_data_wrapper.dart';

class CharacterDataWrapperModel {
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
  final int? code;
  final String? status;
  final CharacterDataContainerModel? data;

<<<<<<< HEAD
  const CharacterDataWrapperModel({
=======
  CharacterDataWrapperModel({
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
    this.code,
    this.status,
    this.data,
  });

  factory CharacterDataWrapperModel.fromJson(Map<String, dynamic> json) {
    return CharacterDataWrapperModel(
      code: json['code'],
      status: json['status'],
      data: json['data'] != null
          ? CharacterDataContainerModel.fromJson(json['data'])
          : null,
    );
  }
  factory CharacterDataWrapperModel.fromEntity(CharacterDataWrapper entity) {
    return CharacterDataWrapperModel(
      code: entity.code,
      status: entity.status,
      data: entity.data != null
          ? CharacterDataContainerModel.fromEntity(entity.data!)
          : null,
    );
  }

  CharacterDataWrapper toEntity() => CharacterDataWrapper(
        code: code,
        status: status,
        data: data != null ? data!.toEntity() : null,
      );
<<<<<<< HEAD

  @override
  List<Object?> get props => [code, status, data];
=======
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
}
