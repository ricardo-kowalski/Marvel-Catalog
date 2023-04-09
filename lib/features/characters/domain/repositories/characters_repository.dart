import 'package:result_dart/result_dart.dart';

import '../entities/character.dart';
import '../entities/character_data_wrapper.dart';

abstract class ICharactersRepository {
  Future<Result<CharacterDataWrapper, Exception>> fetch({
    int? limit,
    int? offset,
  });
}
