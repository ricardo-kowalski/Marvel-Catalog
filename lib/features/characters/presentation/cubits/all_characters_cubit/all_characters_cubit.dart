import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_catalog/core/core.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';

import '../../../domain/domain.dart';
import 'all_characters_state.dart';

class AllCharactersCubit extends Cubit<AllCharactersState> {
  final FetchCharactersUsecase fetchAllService;
  final GetCharacterByIdsListUsecase getByIdsListService;

  AllCharactersCubit(
    this.fetchAllService,
    this.getByIdsListService,
  ) : super(AllCharactersLoadingState()) {
    load(wantMoreLoading: false);
    loadHeroes();
  }

  List<Character> fetchedRecords = [];
  List<Character> heroes = [];
  final List<String> heroesIds = MarvelApi.popularHeroesIds.sample(5);

  bool isLoadingMore = false;
  bool isLoadingHeroes = false;

  Future<void> refreshList() async {
    fetchedRecords = [];
    heroes = [];
    emit(AllCharactersLoadingState());
    load();
    loadHeroes();
  }

  Future<void> load({bool? wantMoreLoading = true}) async {
    isLoadingMore = wantMoreLoading ?? true;

    final result = await fetchAllService(
      limit: 20,
      offset: fetchedRecords.length,
    );
    result.fold(
      (success) {
        List<Character> characters = success.data?.results ?? [];

        for (var char in characters) {
          if (!fetchedRecords.contains(char)) {
            fetchedRecords.add(char);
          }
        }

        emit(
          AllCharactersLoadedState(
            sampleCharacters: sampleCharacters(),
            fetchedRecords: fetchedRecords,
            recordCount: fetchedRecords.length,
          ),
        );
        isLoadingMore = false;
      },
      (failure) {
        emit(
          AllCharactersFailedState(failure),
        );
        isLoadingMore = false;
      },
    );
  }

  Future<void> loadHeroes() async {
    isLoadingHeroes = true;

    var result = await getByIdsListService(heroesIds);
    result.fold(
      (success) {
        heroes.addAll(success);
        emit(
          AllCharactersLoadedState(
            sampleCharacters: success,
            fetchedRecords: allCharacters(),
            recordCount: recordCount(),
          ),
        );
        isLoadingHeroes = false;
      },
      (failure) {
        emit(
          AllCharactersFailedState(failure),
        );
        isLoadingHeroes = false;
      },
    );
  }

  List<Character> allCharacters() => state.maybeWhen(
        loaded: (fetchedRecords, _, __) => fetchedRecords,
        orElse: () => [],
      );
  List<Character> sampleCharacters() => state.maybeWhen(
        loaded: (_, sampleCharacters, __) => sampleCharacters,
        orElse: () => [],
      );
  int recordCount() => state.maybeWhen(
        loaded: (_, __, recordCount) => recordCount,
        orElse: () => 0,
      );
}
