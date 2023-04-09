import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_catalog/features/characters/domain/entities/character.dart';
import 'package:marvel_catalog/features/characters/domain/usecases/fetch_characters_usecase.dart';

import 'infinite_scroll_state.dart';

class InfiniteScrollCubit extends Cubit<InfiniteScrollState> {
  final FetchCharactersUsecase service;

  InfiniteScrollCubit(this.service) : super(InitialState());

  ScrollController scrollController = ScrollController();

  bool isLoading = false;
  List<Character> fetchedRecords = [];

  init() async {
    await getMoreData();
    scrollController.addListener(detectScrolledToEnd);
  }

  detectScrolledToEnd() async {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      await getMoreData();
    }
  }

  startFetching() {
    isLoading = true;
    emit(FetchingStartedState());
  }

  endFetching() {
    isLoading = false;
    emit(FetchingCompletedState(recordCount: fetchedRecords.length));
  }

  showError({required Exception error}) {
    isLoading = false;
    emit(FetchingErrorState(error: error));
  }

  Future<void> getMoreData() async {
    startFetching();
    final result = await service.get(
      limit: 20,
      offset: fetchedRecords.length,
    );
    // List<Character>? recordData = fetchedNewRecords.data?.results;
    result.fold(
      (success) {
        List<Character>? recordData = success.data?.results;
        if (recordData != null) {
          Future.forEach(recordData, (element) => fetchedRecords.add(element));
        }
        endFetching();
      },
      (failure) => showError(error: failure),
    );
  }
}
