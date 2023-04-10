import 'package:marvel_catalog/core/app_exception.dart';
import 'package:marvel_catalog/features/characters/domain/entities/character.dart';
import 'package:result_dart/result_dart.dart';

import '../repositories/characters_repository.dart';

class GetCharacterByIdsListUsecase {
  final ICharactersRepository repository;

  GetCharacterByIdsListUsecase(this.repository);

  Future<Result<List<Character>, AppException>> call(List<String> ids) async =>
      repository.getByIdsList(ids);
}
