import 'package:get_it/get_it.dart';
import 'package:marvel_catalog/features/characters/data/repositories/characters_repository_implementation.dart';

import 'features/characters/data/datasource/characters_datasource.dart';
import 'features/characters/data/datasource/characters_datasource_implementation.dart';
import 'features/characters/domain/repositories/characters_repository.dart';
import 'features/characters/domain/usecases/fetch_characters_usecase.dart';
import 'features/characters/presentation/characters/inifinite_scroll_cubit/infinite_scroll_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
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
