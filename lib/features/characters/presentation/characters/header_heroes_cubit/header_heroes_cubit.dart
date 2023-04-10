// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:marvel_catalog/core/marvel_api/marvel_api.dart';
// import 'package:marvel_catalog/features/characters/domain/entities/character.dart';
// import 'package:marvel_catalog/features/characters/domain/usecases/fetch_characters_usecase.dart';
// import 'package:collection/collection.dart';

// import '../../../domain/usecases/get_character_by_id_usecase.dart';
// import 'header_heroes_state.dart';

// class HeaderHeroesCubit extends Cubit<HeaderHeroesState> {
//   final GetCharacterByIdUsecase service;

//   HeaderHeroesCubit(this.service) : super(InitialState());

//   ScrollController scrollController = ScrollController();

//   bool isLoading = false;
//   late List<Character> heroes;
//   late List<String> heroesIds;

//   init() async {
//     heroes = [];
//     heroesIds = MarvelApi.popularHeroesIds.sample(
//         5); // 5 personagens da lista de ids de personagens mais importantes
//     await getMoreData();
//   }

//   startFetchingHeaderHeroes() {
//     isLoading = true;
//     emit(FetchingHeaderHeroesStartedState());
//   }

//   endFetchingHeaderHeroes() {
//     isLoading = false;
//     emit(FetchingHeaderHeroesCompletedState(selecteds: heroes));
//   }

//   showError({required Exception error}) {
//     isLoading = false;
//     emit(FetchingHeaderHeroesErrorState(error: error));
//   }

//   Future<void> getMoreData() async {
//     startFetchingHeaderHeroes();

//     for (var id in heroesIds) {
//       var result = await service(id);
//       result.fold(
//         (success) {
//           Character? hero = success.data?.results?.first;
//           if (hero != null) heroes.add(hero);
//         },
//         (failure) => showError(error: failure),
//       );
//       endFetchingHeaderHeroes();
//     }
//   }
// }
