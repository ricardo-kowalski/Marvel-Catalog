import 'package:equatable/equatable.dart';

import 'character.dart';

class CharacterDataContainer extends Equatable {
  final int? offset;
  final int? limit;
  final int? total;
  final int? count;
  final List<Character>? results;

  const CharacterDataContainer({
    this.offset,
    this.limit,
    this.total,
    this.count,
    this.results,
  });

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
