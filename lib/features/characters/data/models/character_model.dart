import 'package:equatable/equatable.dart';

import '../../domain/domain.dart';
import 'models.dart';

class CharacterModel extends Equatable {
  final int? id;
  final String? name;
  final String? description;
  //final  DateTime? modified;
  final CharacterImageModel? thumbnail;
  final List<CharacterUrlModel>? urls;
  final String? resourceUri;

  const CharacterModel({
    this.id,
    this.name,
    this.description,
    // this.modified,
    this.thumbnail,
    this.resourceUri,
    this.urls,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return CharacterModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      // modified: json['modified'],
      thumbnail: json['thumbnail'] != null
          ? CharacterImageModel.fromJson(json['thumbnail'])
          : null,
      resourceUri: json['resourceURI'],
      urls: json['urls'] != null
          ? json['urls']
              .map<CharacterUrlModel>(
                  (urlJson) => CharacterUrlModel.fromJson(urlJson))
              .toList()
          : <CharacterUrlModel>[],
    );
  }

  factory CharacterModel.fromEntity(Character entity) => CharacterModel(
        id: entity.id,
        name: entity.name,
        description: entity.description,
        // modified: entity.modified,
        thumbnail: entity.thumbnail != null
            ? CharacterImageModel.fromEntity(entity.thumbnail!)
            : null,
        urls: (entity.urls != null && entity.urls!.isNotEmpty)
            ? entity.urls!
                .map<CharacterUrlModel>(
                    (answer) => CharacterUrlModel.fromEntity(answer))
                .toList()
            : null,
        resourceUri: entity.resourceUri,
      );

  Character toEntity() => Character(
        id: id,
        name: name,
        description: description,
        // modified: modified,
        thumbnail: thumbnail != null ? thumbnail!.toEntity() : null,
        urls: (urls != null && urls!.isNotEmpty)
            ? urls!.map((modelUrl) => modelUrl.toEntity()).toList()
            : null,
        resourceUri: resourceUri,
      );

  Map toJson() => {
        'id': id,
        'name': name,
        'description': description,
        // 'modified': modified,
        'thumbnail': thumbnail,
        'urls': urls,
        'resource_uri': resourceUri,
      };

  @override
  List<Object?> get props {
    return [
      id,
      name,
      description,
      thumbnail,
      urls,
      resourceUri,
    ];
  }
}
