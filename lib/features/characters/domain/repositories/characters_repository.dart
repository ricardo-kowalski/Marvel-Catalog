import '../entities/character.dart';
import '../entities/character_data_wrapper.dart';

abstract class ICharactersRepository {
  Future<CharacterDataWrapper> fetch({
    int? limit,
    int? offset,
  });
}
