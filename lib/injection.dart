import 'package:get_it/get_it.dart';
import 'package:marvel_catalog/features/characters/data/repositories/characters_repository_implementation.dart';

import 'features/characters/data/datasource/characters_datasource.dart';
import 'features/characters/data/datasource/characters_datasource_implementation.dart';
import 'features/characters/domain/repositories/characters_repository.dart';
import 'features/characters/domain/usecases/fetch_characters_usecase.dart';
import 'features/characters/domain/usecases/get_character_by_ids_list_usecase.dart';
import 'features/characters/domain/usecases/get_character_by_id_usecase.dart';
import 'features/characters/presentation/characters/all_characters_cubit/all_characters_cubit.dart';
import 'features/characters/presentation/characters/header_heroes_cubit/header_heroes_cubit.dart';
import 'features/characters/presentation/characters/inifinite_scroll_cubit/infinite_scroll_cubit.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(
    () => InfiniteScrollCubit(
      sl.call(),
    ),
  );
  sl.registerFactory(
    () => AllCharactersCubit(
      sl.call(),
      sl.call(),
      // sl.call(),
    ),
  );
  // sl.registerFactory(
  //   () => HeaderHeroesCubit(
  //     sl.call(),
  //   ),
  // );

  // Use cases
  sl.registerLazySingleton<FetchCharactersUsecase>(
      () => FetchCharactersUsecase(sl.call()));

  // sl.registerLazySingleton<GetCharacterByIdUsecase>(
  //     () => GetCharacterByIdUsecase(sl.call()));

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
