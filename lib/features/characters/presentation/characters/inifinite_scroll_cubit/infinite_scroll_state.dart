import 'package:flutter/services.dart';
import 'package:marvel_catalog/core/app_exception.dart';

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
  final AppException error;
  FetchingErrorState({required this.error});
}
