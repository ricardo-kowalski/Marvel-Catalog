import 'package:marvel_catalog/core/errors/app_exception.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain.dart';

part 'all_characters_state.freezed.dart';

@freezed
class AllCharactersState with _$AllCharactersState {
  factory AllCharactersState.loading() = AllCharactersLoadingState;

  factory AllCharactersState.loaded({
    required List<Character> fetchedRecords,
    required List<Character> sampleCharacters,
    required int recordCount,
  }) = AllCharactersLoadedState;

  factory AllCharactersState.error(AppException error) =
      AllCharactersFailedState;
}
