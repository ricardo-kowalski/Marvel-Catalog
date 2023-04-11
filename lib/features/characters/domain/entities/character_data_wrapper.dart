import 'package:equatable/equatable.dart';

import 'entities.dart';

class CharacterDataWrapper extends Equatable {
  final int? code;
  final String? status;
  final CharacterDataContainer? data;

  const CharacterDataWrapper({
    this.code,
    this.status,
    this.data,
  });

  @override
  List<Object?> get props => [
        code,
        status,
        data,
      ];
}
