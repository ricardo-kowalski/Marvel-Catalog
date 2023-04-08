import 'package:bloc/bloc.dart';
import 'package:marvel_catalog/features/characters/domain/entities/character.dart';
import 'package:meta/meta.dart';

import '../../../domain/usecases/fetch_characters_usecase.dart';
import 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final FetchCharactersUsecase charactersUseCase;

  CharactersCubit({required this.charactersUseCase})
      : super(CharactersLoadingState()) {
    loadAndAppend();
  }

  // Future<void> load() async {
  //   try {
  //     emit(CharactersLoadingState());
  //     final charactersWrapper = await charactersUseCase.get();
  //     final characters = charactersWrapper.data?.results;
  //     if (characters != null && characters.isNotEmpty) {
  //       emit(CharactersLoadedState(
  //         characters: characters,
  //         totalLoaded: characters.length,
  //       ));
  //     } else {
  //       emit(CharactersEmptyState());
  //     }
  //   } on NetworkException {
  //     emit(CharactersFailedState(
  //         "Couldn't fetch characters. Is the device online?"));
  //   } catch (error) {
  //     emit(CharactersFailedState("Error"));
  //   }
  // }

  // Future<void> loadAndAppend({
  //   int? limit,
  //   int? offset,
  // }) async {
  //   try {
  //     // emit(CharactersLoadingState());
  //     final charactersWrapper = await charactersUseCase.get(
  //       limit: limit,
  //       offset: offset,
  //     );
  //     final newCharacters = charactersWrapper.data?.results;

  //     if (newCharacters != null && newCharacters.isNotEmpty) {
  //       if (state is CharactersLoadedState) {
  //         final List<Character> chras = [
  //           ...(state as CharactersLoadedState).characters,
  //           ...newCharacters
  //         ];
  //         emit(CharactersLoadedState(
  //             characters: chras, totalLoaded: chras.length));
  //       }
  //     }
  //     //else {
  //     //   emit(CharactersEmptyState());
  //     // }
  //   } on NetworkException {
  //     emit(CharactersFailedState(
  //         "Couldn't fetch characters. Is the device online?"));
  //   } catch (error) {
  //     emit(CharactersFailedState("Error"));
  //   }
  // }
  Future<void> loadAndAppend({
    int? limit,
    int? offset,
  }) async {
    try {
      emit(CharactersLoadingMorePagesState());

      final charactersWrapper = await charactersUseCase.get(
        limit: limit,
        offset: offset,
      );
      final newCharacters = charactersWrapper.data?.results;

      if (newCharacters != null && newCharacters.isNotEmpty) {
        // if (state is CharactersLoadedState) {
        final List<Character> chras = [...characters(), ...newCharacters];
        emit(CharactersLoadedState(
          characters: chras,
          totalLoaded: chras.length,
          lastsLoaded: characters(),
        ));
        // }
        return;
      }
      emit(CharactersLoadedState(
        characters: characters(),
        lastsLoaded: lastsLoaded(),
        totalLoaded: totalLoaded(),
      ));
      //else {
      //   emit(CharactersEmptyState());
      // }
    } on NetworkException {
      emit(CharactersFailedState(
          "Couldn't fetch characters. Is the device online?"));
    } catch (error) {
      emit(CharactersFailedState("Error"));
    }
  }

  List<Character> characters() {
    return state.maybeWhen(
      loaded: (characters, __, _) => characters,
      orElse: () => [],
    );
  }

  int totalLoaded() {
    return state.maybeWhen(
      loaded: (_, totalLoaded, __) => totalLoaded,
      orElse: () => 0,
    );
  }

  List<Character> lastsLoaded() {
    return state.maybeWhen(
      loaded: (_, __, lastsLoaded) => lastsLoaded,
      orElse: () => [],
    );
  }

  // Future<List<Character>> loadMore({
  //   int? limit,
  //   int? offset,
  // }) async {
  //   try {
  //     // emit(CharactersLoadingState());
  //     final charactersWrapper = await charactersUseCase.get(
  //       limit: limit,
  //       // limit: 20,
  //       offset: offset,
  //     );
  //     final newCharacters = charactersWrapper.data?.results;

  //     if (newCharacters != null) return newCharacters;

  //     return [];
  //   } catch (error) {
  //     // emit(CharactersFailedState("Error"));
  //     return [];
  //   }
  // }
}

class NetworkException implements Exception {} // REMOVER
