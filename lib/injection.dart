import 'package:get_it/get_it.dart';
import 'package:marvel_catalog/features/characters/data/repositories/characters_repository_implementation.dart';

import 'features/characters/data/datasource/characters_datasource.dart';
import 'features/characters/data/datasource/characters_datasource_implementation.dart';
import 'features/characters/domain/repositories/characters_repository.dart';
import 'features/characters/domain/usecases/fetch_characters_usecase.dart';
<<<<<<< HEAD
import 'features/characters/domain/usecases/get_character_by_ids_list_usecase.dart';
import 'features/characters/domain/usecases/get_character_by_id_usecase.dart';
import 'features/characters/presentation/characters/all_characters_cubit/all_characters_cubit.dart';
import 'features/characters/presentation/characters/header_heroes_cubit/header_heroes_cubit.dart';
import 'features/characters/presentation/characters/inifinite_scroll_cubit/infinite_scroll_cubit.dart';
import 'package:http/http.dart' as http;
=======
import 'features/characters/presentation/characters/inifinite_scroll_cubit/infinite_scroll_cubit.dart';
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(
    () => InfiniteScrollCubit(
      sl.call(),
    ),
  );
<<<<<<< HEAD
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
=======
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)

  // Use cases
  sl.registerLazySingleton<FetchCharactersUsecase>(
      () => FetchCharactersUsecase(sl.call()));

<<<<<<< HEAD
  // sl.registerLazySingleton<GetCharacterByIdUsecase>(
  //     () => GetCharacterByIdUsecase(sl.call()));

  sl.registerLazySingleton<GetCharacterByIdsListUsecase>(
      () => GetCharacterByIdsListUsecase(sl.call()));

=======
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
  // Repository
  sl.registerLazySingleton<ICharactersRepository>(
    () => CharactersRepositoryImplementation(sl.call()),
  );

  // Data sources
  sl.registerLazySingleton<ICharactersDatasource>(
<<<<<<< HEAD
    () => CharactersDatasourceImplementation(sl.call()),
  );

  // External
  sl.registerLazySingleton<http.Client>(
    () => http.Client(),
=======
    () => CharactersDatasourceImplementation(),
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
  );
}
