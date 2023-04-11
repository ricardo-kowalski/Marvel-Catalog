import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import 'features/characters/data/data.dart';
import 'features/characters/domain/domain.dart';
import 'features/characters/presentation/presentation.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(
    () => AllCharactersCubit(
      sl.call(),
      sl.call(),
    ),
  );

  // Use cases
  sl.registerLazySingleton<FetchCharactersUsecase>(
      () => FetchCharactersUsecase(sl.call()));

  sl.registerLazySingleton<GetCharacterByIdsListUsecase>(
      () => GetCharacterByIdsListUsecase(sl.call()));

  // Repository
  sl.registerLazySingleton<ICharactersRepository>(
    () => CharactersRepositoryImplementation(sl.call()),
  );

  // Data sources
  sl.registerLazySingleton<ICharactersDatasource>(
    () => CharactersDatasourceImplementation(sl.call()),
  );

  // External
  sl.registerLazySingleton<http.Client>(
    () => http.Client(),
  );
}
