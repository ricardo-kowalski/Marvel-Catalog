// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_characters_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AllCharactersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Character> fetchedRecords,
            List<Character> sampleCharacters, int recordCount)
        loaded,
    required TResult Function(AppException error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Character> fetchedRecords,
            List<Character> sampleCharacters, int recordCount)?
        loaded,
    TResult? Function(AppException error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Character> fetchedRecords,
            List<Character> sampleCharacters, int recordCount)?
        loaded,
    TResult Function(AppException error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllCharactersLoadingState value) loading,
    required TResult Function(AllCharactersLoadedState value) loaded,
    required TResult Function(AllCharactersFailedState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllCharactersLoadingState value)? loading,
    TResult? Function(AllCharactersLoadedState value)? loaded,
    TResult? Function(AllCharactersFailedState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllCharactersLoadingState value)? loading,
    TResult Function(AllCharactersLoadedState value)? loaded,
    TResult Function(AllCharactersFailedState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllCharactersStateCopyWith<$Res> {
  factory $AllCharactersStateCopyWith(
          AllCharactersState value, $Res Function(AllCharactersState) then) =
      _$AllCharactersStateCopyWithImpl<$Res, AllCharactersState>;
}

/// @nodoc
class _$AllCharactersStateCopyWithImpl<$Res, $Val extends AllCharactersState>
    implements $AllCharactersStateCopyWith<$Res> {
  _$AllCharactersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AllCharactersLoadingStateCopyWith<$Res> {
  factory _$$AllCharactersLoadingStateCopyWith(
          _$AllCharactersLoadingState value,
          $Res Function(_$AllCharactersLoadingState) then) =
      __$$AllCharactersLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AllCharactersLoadingStateCopyWithImpl<$Res>
    extends _$AllCharactersStateCopyWithImpl<$Res, _$AllCharactersLoadingState>
    implements _$$AllCharactersLoadingStateCopyWith<$Res> {
  __$$AllCharactersLoadingStateCopyWithImpl(_$AllCharactersLoadingState _value,
      $Res Function(_$AllCharactersLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AllCharactersLoadingState implements AllCharactersLoadingState {
  _$AllCharactersLoadingState();

  @override
  String toString() {
    return 'AllCharactersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllCharactersLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Character> fetchedRecords,
            List<Character> sampleCharacters, int recordCount)
        loaded,
    required TResult Function(AppException error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Character> fetchedRecords,
            List<Character> sampleCharacters, int recordCount)?
        loaded,
    TResult? Function(AppException error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Character> fetchedRecords,
            List<Character> sampleCharacters, int recordCount)?
        loaded,
    TResult Function(AppException error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllCharactersLoadingState value) loading,
    required TResult Function(AllCharactersLoadedState value) loaded,
    required TResult Function(AllCharactersFailedState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllCharactersLoadingState value)? loading,
    TResult? Function(AllCharactersLoadedState value)? loaded,
    TResult? Function(AllCharactersFailedState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllCharactersLoadingState value)? loading,
    TResult Function(AllCharactersLoadedState value)? loaded,
    TResult Function(AllCharactersFailedState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AllCharactersLoadingState implements AllCharactersState {
  factory AllCharactersLoadingState() = _$AllCharactersLoadingState;
}

/// @nodoc
abstract class _$$AllCharactersLoadedStateCopyWith<$Res> {
  factory _$$AllCharactersLoadedStateCopyWith(_$AllCharactersLoadedState value,
          $Res Function(_$AllCharactersLoadedState) then) =
      __$$AllCharactersLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Character> fetchedRecords,
      List<Character> sampleCharacters,
      int recordCount});
}

/// @nodoc
class __$$AllCharactersLoadedStateCopyWithImpl<$Res>
    extends _$AllCharactersStateCopyWithImpl<$Res, _$AllCharactersLoadedState>
    implements _$$AllCharactersLoadedStateCopyWith<$Res> {
  __$$AllCharactersLoadedStateCopyWithImpl(_$AllCharactersLoadedState _value,
      $Res Function(_$AllCharactersLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchedRecords = null,
    Object? sampleCharacters = null,
    Object? recordCount = null,
  }) {
    return _then(_$AllCharactersLoadedState(
      fetchedRecords: null == fetchedRecords
          ? _value._fetchedRecords
          : fetchedRecords // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      sampleCharacters: null == sampleCharacters
          ? _value._sampleCharacters
          : sampleCharacters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      recordCount: null == recordCount
          ? _value.recordCount
          : recordCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AllCharactersLoadedState implements AllCharactersLoadedState {
  _$AllCharactersLoadedState(
      {required final List<Character> fetchedRecords,
      required final List<Character> sampleCharacters,
      required this.recordCount})
      : _fetchedRecords = fetchedRecords,
        _sampleCharacters = sampleCharacters;

  final List<Character> _fetchedRecords;
  @override
  List<Character> get fetchedRecords {
    if (_fetchedRecords is EqualUnmodifiableListView) return _fetchedRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fetchedRecords);
  }

  final List<Character> _sampleCharacters;
  @override
  List<Character> get sampleCharacters {
    if (_sampleCharacters is EqualUnmodifiableListView)
      return _sampleCharacters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sampleCharacters);
  }

  @override
  final int recordCount;

  @override
  String toString() {
    return 'AllCharactersState.loaded(fetchedRecords: $fetchedRecords, sampleCharacters: $sampleCharacters, recordCount: $recordCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllCharactersLoadedState &&
            const DeepCollectionEquality()
                .equals(other._fetchedRecords, _fetchedRecords) &&
            const DeepCollectionEquality()
                .equals(other._sampleCharacters, _sampleCharacters) &&
            (identical(other.recordCount, recordCount) ||
                other.recordCount == recordCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_fetchedRecords),
      const DeepCollectionEquality().hash(_sampleCharacters),
      recordCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllCharactersLoadedStateCopyWith<_$AllCharactersLoadedState>
      get copyWith =>
          __$$AllCharactersLoadedStateCopyWithImpl<_$AllCharactersLoadedState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Character> fetchedRecords,
            List<Character> sampleCharacters, int recordCount)
        loaded,
    required TResult Function(AppException error) error,
  }) {
    return loaded(fetchedRecords, sampleCharacters, recordCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Character> fetchedRecords,
            List<Character> sampleCharacters, int recordCount)?
        loaded,
    TResult? Function(AppException error)? error,
  }) {
    return loaded?.call(fetchedRecords, sampleCharacters, recordCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Character> fetchedRecords,
            List<Character> sampleCharacters, int recordCount)?
        loaded,
    TResult Function(AppException error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(fetchedRecords, sampleCharacters, recordCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllCharactersLoadingState value) loading,
    required TResult Function(AllCharactersLoadedState value) loaded,
    required TResult Function(AllCharactersFailedState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllCharactersLoadingState value)? loading,
    TResult? Function(AllCharactersLoadedState value)? loaded,
    TResult? Function(AllCharactersFailedState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllCharactersLoadingState value)? loading,
    TResult Function(AllCharactersLoadedState value)? loaded,
    TResult Function(AllCharactersFailedState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AllCharactersLoadedState implements AllCharactersState {
  factory AllCharactersLoadedState(
      {required final List<Character> fetchedRecords,
      required final List<Character> sampleCharacters,
      required final int recordCount}) = _$AllCharactersLoadedState;

  List<Character> get fetchedRecords;
  List<Character> get sampleCharacters;
  int get recordCount;
  @JsonKey(ignore: true)
  _$$AllCharactersLoadedStateCopyWith<_$AllCharactersLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AllCharactersFailedStateCopyWith<$Res> {
  factory _$$AllCharactersFailedStateCopyWith(_$AllCharactersFailedState value,
          $Res Function(_$AllCharactersFailedState) then) =
      __$$AllCharactersFailedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AppException error});
}

/// @nodoc
class __$$AllCharactersFailedStateCopyWithImpl<$Res>
    extends _$AllCharactersStateCopyWithImpl<$Res, _$AllCharactersFailedState>
    implements _$$AllCharactersFailedStateCopyWith<$Res> {
  __$$AllCharactersFailedStateCopyWithImpl(_$AllCharactersFailedState _value,
      $Res Function(_$AllCharactersFailedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AllCharactersFailedState(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException,
    ));
  }
}

/// @nodoc

class _$AllCharactersFailedState implements AllCharactersFailedState {
  _$AllCharactersFailedState(this.error);

  @override
  final AppException error;

  @override
  String toString() {
    return 'AllCharactersState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllCharactersFailedState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllCharactersFailedStateCopyWith<_$AllCharactersFailedState>
      get copyWith =>
          __$$AllCharactersFailedStateCopyWithImpl<_$AllCharactersFailedState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Character> fetchedRecords,
            List<Character> sampleCharacters, int recordCount)
        loaded,
    required TResult Function(AppException error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Character> fetchedRecords,
            List<Character> sampleCharacters, int recordCount)?
        loaded,
    TResult? Function(AppException error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Character> fetchedRecords,
            List<Character> sampleCharacters, int recordCount)?
        loaded,
    TResult Function(AppException error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllCharactersLoadingState value) loading,
    required TResult Function(AllCharactersLoadedState value) loaded,
    required TResult Function(AllCharactersFailedState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllCharactersLoadingState value)? loading,
    TResult? Function(AllCharactersLoadedState value)? loaded,
    TResult? Function(AllCharactersFailedState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllCharactersLoadingState value)? loading,
    TResult Function(AllCharactersLoadedState value)? loaded,
    TResult Function(AllCharactersFailedState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AllCharactersFailedState implements AllCharactersState {
  factory AllCharactersFailedState(final AppException error) =
      _$AllCharactersFailedState;

  AppException get error;
  @JsonKey(ignore: true)
  _$$AllCharactersFailedStateCopyWith<_$AllCharactersFailedState>
      get copyWith => throw _privateConstructorUsedError;
}
