import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_catalog/features/characters/domain/entities/character.dart';

part 'characters_state.freezed.dart';

@freezed
class CharactersState with _$CharactersState {
  factory CharactersState.error(String error) = CharactersFailedState;

  factory CharactersState.loaded({
    required List<Character> characters,
    required int totalLoaded,
    required List<Character> lastsLoaded,
  }) = CharactersLoadedState;

  factory CharactersState.loading() = CharactersLoadingState;

  factory CharactersState.loadingMorePages() = CharactersLoadingMorePagesState;

  factory CharactersState.empty() = CharactersEmptyState;

  // static get totalLoaded => ;
}
