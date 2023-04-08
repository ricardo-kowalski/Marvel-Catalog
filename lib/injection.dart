import 'package:get_it/get_it.dart';
import 'package:marvel_catalog/features/characters/data/datasource/characters/characters_datasource_implementation.dart';
import 'package:marvel_catalog/features/characters/data/repositories/characters_repository_implementation.dart';
import 'package:marvel_catalog/features/characters/presentation/characters/characters_cubit/characters_cubit.dart';

import 'features/characters/data/datasource/characters/characters_datasource.dart';
import 'features/characters/domain/repositories/characters_repository.dart';
import 'features/characters/domain/usecases/fetch_characters_usecase.dart';
import 'features/characters/presentation/characters/inifinite_scroll_cubit/infinite_scroll_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features - Exercices

  // Bloc
  sl.registerFactory(
    () => CharactersCubit(
      charactersUseCase: sl.call(),
    ),
  );

  sl.registerFactory(
    () => InfiniteScrollCubit(
      sl.call(),
    ),
  );

  // Use cases
  sl.registerLazySingleton<FetchCharactersUsecase>(
      () => FetchCharactersUsecase(sl.call()));

  // Repository
  sl.registerLazySingleton<ICharactersRepository>(
    () => CharactersRepositoryImplementation(sl.call()),
  );

  // Data sources
  sl.registerLazySingleton<ICharactersDatasource>(
    () => CharactersDatasourceImplementation(),
  );
}
