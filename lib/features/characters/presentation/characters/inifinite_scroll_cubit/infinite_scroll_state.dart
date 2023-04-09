import 'package:flutter/services.dart';

abstract class InfiniteScrollState {
  InfiniteScrollState();
}

class InitialState extends InfiniteScrollState {}

class FetchingStartedState extends InfiniteScrollState {}

class FetchingCompletedState extends InfiniteScrollState {
  final int recordCount;

  FetchingCompletedState({required this.recordCount});
}

class FetchingErrorState extends InfiniteScrollState {
  final Exception error;

  FetchingErrorState({required this.error});
}
