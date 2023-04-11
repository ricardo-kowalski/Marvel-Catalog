import 'package:equatable/equatable.dart';

import '../../domain/domain.dart';

class CharacterUrlModel extends Equatable {
  final String? type;
  final String? url;

  const CharacterUrlModel({
    this.type,
    this.url,
  });

  factory CharacterUrlModel.fromJson(Map<String, dynamic> json) {
    return CharacterUrlModel(
      type: json['type'],
      url: json['url'],
    );
  }
  factory CharacterUrlModel.fromEntity(CharacterUrl entity) {
    return CharacterUrlModel(
      type: entity.type,
      url: entity.url,
    );
  }

  CharacterUrl toEntity() => CharacterUrl(
        type: type,
        url: url,
      );

  @override
  List<Object?> get props => [type, url];
}
