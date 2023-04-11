import 'package:marvel_catalog/core/core.dart';
import 'package:result_dart/result_dart.dart';

import '../domain.dart';

class GetCharacterByIdsListUsecase {
  final ICharactersRepository repository;

  GetCharacterByIdsListUsecase(this.repository);

  Future<Result<List<Character>, AppException>> call(List<String> ids) async =>
      repository.getByIdsList(ids);
}
