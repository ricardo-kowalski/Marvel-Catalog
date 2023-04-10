import 'package:flutter/services.dart';
import 'package:marvel_catalog/core/app_exception.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/character.dart';

part 'all_characters_state.freezed.dart';

@freezed
class AllCharactersState with _$AllCharactersState {
  factory AllCharactersState.loading() = AllCharactersLoadingState;

  // factory AllCharactersState.empty() = AllCharactersEmptyState;

  factory AllCharactersState.loaded({
    required List<Character> fetchedRecords,
    required List<Character> sampleCharacters,
    required int recordCount,
  }) = AllCharactersLoadedState;

  // factory AllCharactersState.loadedSample({
  //   required List<Character> sampleCharacters,
  // }) = AllCharactersLoadedSampleState;

  factory AllCharactersState.error(AppException error) =
      AllCharactersFailedState;
}
