import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
import 'package:marvel_catalog/core/app_exception.dart';
=======
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
import 'package:marvel_catalog/features/characters/domain/entities/character.dart';
import 'package:marvel_catalog/features/characters/domain/usecases/fetch_characters_usecase.dart';

import 'infinite_scroll_state.dart';

class InfiniteScrollCubit extends Cubit<InfiniteScrollState> {
  final FetchCharactersUsecase service;

  InfiniteScrollCubit(this.service) : super(InitialState());

  ScrollController scrollController = ScrollController();

  bool isLoading = false;
  List<Character> fetchedRecords = [];

<<<<<<< HEAD
  @override
  Future<void> close() async {
    super.close();
    scrollController.dispose();
  }

  init() async {
    fetchedRecords = [];
=======
  init() async {
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
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

<<<<<<< HEAD
  showError({required AppException error}) {
=======
  showError({required Exception error}) {
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
    isLoading = false;
    emit(FetchingErrorState(error: error));
  }

  Future<void> getMoreData() async {
    startFetching();
<<<<<<< HEAD
    final result = await service(
      limit: 20,
      offset: fetchedRecords.length,
    );
=======
    final result = await service.get(
      limit: 20,
      offset: fetchedRecords.length,
    );
    // List<Character>? recordData = fetchedNewRecords.data?.results;
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
    result.fold(
      (success) {
        List<Character>? recordData = success.data?.results;
        if (recordData != null) {
<<<<<<< HEAD
          Future.forEach(
            recordData,
            (element) {
              if (!fetchedRecords.contains(element)) {
                fetchedRecords.add(element);
              }
            },
          );
=======
          Future.forEach(recordData, (element) => fetchedRecords.add(element));
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
        }
        endFetching();
      },
      (failure) => showError(error: failure),
    );
  }
}
