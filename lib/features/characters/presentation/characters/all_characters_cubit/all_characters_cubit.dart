import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_catalog/core/app_exception.dart';
import 'package:marvel_catalog/core/marvel_api/marvel_api.dart';
import 'package:marvel_catalog/features/characters/domain/entities/character.dart';
import 'package:marvel_catalog/features/characters/domain/usecases/fetch_characters_usecase.dart';
import 'package:marvel_catalog/features/characters/domain/usecases/get_character_by_ids_list_usecase.dart';
import 'package:marvel_catalog/features/characters/domain/usecases/get_character_by_id_usecase.dart';
import 'package:marvel_catalog/features/characters/presentation/characters/header_heroes_cubit/header_heroes_state.dart';
import 'package:collection/collection.dart';

import 'all_characters_state.dart';

class AllCharactersCubit extends Cubit<AllCharactersState> {
  final FetchCharactersUsecase fetchAllService;
  // final GetCharacterByIdUsecase getByIdService;
  final GetCharacterByIdsListUsecase getByIdsListService;

  AllCharactersCubit(
    this.fetchAllService,
    // this.getByIdService,
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
    // emit(AllCharactersLoadingState());
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

  // Future<void> loadHeroes() async {
  //   isLoadingHeroes = true;

  //   for (var id in heroesIds) {
  //     var result = await getByIdService(id);
  //     result.fold(
  //       (success) {
  //         Character? hero = success.data?.results?.first;
  //         if (hero != null) heroes.add(hero);
  //         emit(
  //           AllCharactersLoadedState(s
  //             sampleCharacters: heroes,
  //             fetchedRecords: allCharacters(),
  //             recordCount: recordCount(),sadsadfasdf
  //           ),
  //         );
  //         isLoadingHeroes = false;
  //       },
  //       (failure) {
  //         emit(
  //           AllCharactersFailedState(failure),
  //         );
  //         return;
  //       },
  //     );
  //   }
  // }
  Future<void> loadHeroes() async {
    isLoadingHeroes = true;

    var result = await getByIdsListService(heroesIds);
    result.fold(
      (success) {
        // final List<Character> fetchedHeros = success;
        heroes.addAll(success);
        // print(heroes);
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
