import 'package:flutter/services.dart';
<<<<<<< HEAD
import 'package:marvel_catalog/core/app_exception.dart';
=======
>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)

abstract class InfiniteScrollState {
  InfiniteScrollState();
}

class InitialState extends InfiniteScrollState {}

class FetchingStartedState extends InfiniteScrollState {}

class FetchingCompletedState extends InfiniteScrollState {
  final int recordCount;
<<<<<<< HEAD
=======

>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
  FetchingCompletedState({required this.recordCount});
}

class FetchingErrorState extends InfiniteScrollState {
<<<<<<< HEAD
  final AppException error;
=======
  final Exception error;

>>>>>>> parent of 036bdbe (Merge pull request #4 from ricardo-kowalski/revert-3-feature/03)
  FetchingErrorState({required this.error});
}
