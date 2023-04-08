// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharactersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function(List<Character> characters, int totalLoaded,
            List<Character> lastsLoaded)
        loaded,
    required TResult Function() loading,
    required TResult Function() loadingMorePages,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function(List<Character> characters, int totalLoaded,
            List<Character> lastsLoaded)?
        loaded,
    TResult? Function()? loading,
    TResult? Function()? loadingMorePages,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function(List<Character> characters, int totalLoaded,
            List<Character> lastsLoaded)?
        loaded,
    TResult Function()? loading,
    TResult Function()? loadingMorePages,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersFailedState value) error,
    required TResult Function(CharactersLoadedState value) loaded,
    required TResult Function(CharactersLoadingState value) loading,
    required TResult Function(CharactersLoadingMorePagesState value)
        loadingMorePages,
    required TResult Function(CharactersEmptyState value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersFailedState value)? error,
    TResult? Function(CharactersLoadedState value)? loaded,
    TResult? Function(CharactersLoadingState value)? loading,
    TResult? Function(CharactersLoadingMorePagesState value)? loadingMorePages,
    TResult? Function(CharactersEmptyState value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersFailedState value)? error,
    TResult Function(CharactersLoadedState value)? loaded,
    TResult Function(CharactersLoadingState value)? loading,
    TResult Function(CharactersLoadingMorePagesState value)? loadingMorePages,
    TResult Function(CharactersEmptyState value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersStateCopyWith<$Res> {
  factory $CharactersStateCopyWith(
          CharactersState value, $Res Function(CharactersState) then) =
      _$CharactersStateCopyWithImpl<$Res, CharactersState>;
}

/// @nodoc
class _$CharactersStateCopyWithImpl<$Res, $Val extends CharactersState>
    implements $CharactersStateCopyWith<$Res> {
  _$CharactersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CharactersFailedStateCopyWith<$Res> {
  factory _$$CharactersFailedStateCopyWith(_$CharactersFailedState value,
          $Res Function(_$CharactersFailedState) then) =
      __$$CharactersFailedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CharactersFailedStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$CharactersFailedState>
    implements _$$CharactersFailedStateCopyWith<$Res> {
  __$$CharactersFailedStateCopyWithImpl(_$CharactersFailedState _value,
      $Res Function(_$CharactersFailedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CharactersFailedState(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CharactersFailedState implements CharactersFailedState {
  _$CharactersFailedState(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CharactersState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersFailedState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersFailedStateCopyWith<_$CharactersFailedState> get copyWith =>
      __$$CharactersFailedStateCopyWithImpl<_$CharactersFailedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function(List<Character> characters, int totalLoaded,
            List<Character> lastsLoaded)
        loaded,
    required TResult Function() loading,
    required TResult Function() loadingMorePages,
    required TResult Function() empty,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function(List<Character> characters, int totalLoaded,
            List<Character> lastsLoaded)?
        loaded,
    TResult? Function()? loading,
    TResult? Function()? loadingMorePages,
    TResult? Function()? empty,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function(List<Character> characters, int totalLoaded,
            List<Character> lastsLoaded)?
        loaded,
    TResult Function()? loading,
    TResult Function()? loadingMorePages,
    TResult Function()? empty,
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
    required TResult Function(CharactersFailedState value) error,
    required TResult Function(CharactersLoadedState value) loaded,
    required TResult Function(CharactersLoadingState value) loading,
    required TResult Function(CharactersLoadingMorePagesState value)
        loadingMorePages,
    required TResult Function(CharactersEmptyState value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersFailedState value)? error,
    TResult? Function(CharactersLoadedState value)? loaded,
    TResult? Function(CharactersLoadingState value)? loading,
    TResult? Function(CharactersLoadingMorePagesState value)? loadingMorePages,
    TResult? Function(CharactersEmptyState value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersFailedState value)? error,
    TResult Function(CharactersLoadedState value)? loaded,
    TResult Function(CharactersLoadingState value)? loading,
    TResult Function(CharactersLoadingMorePagesState value)? loadingMorePages,
    TResult Function(CharactersEmptyState value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CharactersFailedState implements CharactersState {
  factory CharactersFailedState(final String error) = _$CharactersFailedState;

  String get error;
  @JsonKey(ignore: true)
  _$$CharactersFailedStateCopyWith<_$CharactersFailedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharactersLoadedStateCopyWith<$Res> {
  factory _$$CharactersLoadedStateCopyWith(_$CharactersLoadedState value,
          $Res Function(_$CharactersLoadedState) then) =
      __$$CharactersLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Character> characters,
      int totalLoaded,
      List<Character> lastsLoaded});
}

/// @nodoc
class __$$CharactersLoadedStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$CharactersLoadedState>
    implements _$$CharactersLoadedStateCopyWith<$Res> {
  __$$CharactersLoadedStateCopyWithImpl(_$CharactersLoadedState _value,
      $Res Function(_$CharactersLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? totalLoaded = null,
    Object? lastsLoaded = null,
  }) {
    return _then(_$CharactersLoadedState(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      totalLoaded: null == totalLoaded
          ? _value.totalLoaded
          : totalLoaded // ignore: cast_nullable_to_non_nullable
              as int,
      lastsLoaded: null == lastsLoaded
          ? _value._lastsLoaded
          : lastsLoaded // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc

class _$CharactersLoadedState implements CharactersLoadedState {
  _$CharactersLoadedState(
      {required final List<Character> characters,
      required this.totalLoaded,
      required final List<Character> lastsLoaded})
      : _characters = characters,
        _lastsLoaded = lastsLoaded;

  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  final int totalLoaded;
  final List<Character> _lastsLoaded;
  @override
  List<Character> get lastsLoaded {
    if (_lastsLoaded is EqualUnmodifiableListView) return _lastsLoaded;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lastsLoaded);
  }

  @override
  String toString() {
    return 'CharactersState.loaded(characters: $characters, totalLoaded: $totalLoaded, lastsLoaded: $lastsLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersLoadedState &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.totalLoaded, totalLoaded) ||
                other.totalLoaded == totalLoaded) &&
            const DeepCollectionEquality()
                .equals(other._lastsLoaded, _lastsLoaded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_characters),
      totalLoaded,
      const DeepCollectionEquality().hash(_lastsLoaded));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersLoadedStateCopyWith<_$CharactersLoadedState> get copyWith =>
      __$$CharactersLoadedStateCopyWithImpl<_$CharactersLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function(List<Character> characters, int totalLoaded,
            List<Character> lastsLoaded)
        loaded,
    required TResult Function() loading,
    required TResult Function() loadingMorePages,
    required TResult Function() empty,
  }) {
    return loaded(characters, totalLoaded, lastsLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function(List<Character> characters, int totalLoaded,
            List<Character> lastsLoaded)?
        loaded,
    TResult? Function()? loading,
    TResult? Function()? loadingMorePages,
    TResult? Function()? empty,
  }) {
    return loaded?.call(characters, totalLoaded, lastsLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function(List<Character> characters, int totalLoaded,
            List<Character> lastsLoaded)?
        loaded,
    TResult Function()? loading,
    TResult Function()? loadingMorePages,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(characters, totalLoaded, lastsLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersFailedState value) error,
    required TResult Function(CharactersLoadedState value) loaded,
    required TResult Function(CharactersLoadingState value) loading,
    required TResult Function(CharactersLoadingMorePagesState value)
        loadingMorePages,
    required TResult Function(CharactersEmptyState value) empty,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersFailedState value)? error,
    TResult? Function(CharactersLoadedState value)? loaded,
    TResult? Function(CharactersLoadingState value)? loading,
    TResult? Function(CharactersLoadingMorePagesState value)? loadingMorePages,
    TResult? Function(CharactersEmptyState value)? empty,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersFailedState value)? error,
    TResult Function(CharactersLoadedState value)? loaded,
    TResult Function(CharactersLoadingState value)? loading,
    TResult Function(CharactersLoadingMorePagesState value)? loadingMorePages,
    TResult Function(CharactersEmptyState value)? empty,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CharactersLoadedState implements CharactersState {
  factory CharactersLoadedState(
      {required final List<Character> characters,
      required final int totalLoaded,
      required final List<Character> lastsLoaded}) = _$CharactersLoadedState;

  List<Character> get characters;
  int get totalLoaded;
  List<Character> get lastsLoaded;
  @JsonKey(ignore: true)
  _$$CharactersLoadedStateCopyWith<_$CharactersLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharactersLoadingStateCopyWith<$Res> {
  factory _$$CharactersLoadingStateCopyWith(_$CharactersLoadingState value,
          $Res Function(_$CharactersLoadingState) then) =
      __$$CharactersLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharactersLoadingStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$CharactersLoadingState>
    implements _$$CharactersLoadingStateCopyWith<$Res> {
  __$$CharactersLoadingStateCopyWithImpl(_$CharactersLoadingState _value,
      $Res Function(_$CharactersLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharactersLoadingState implements CharactersLoadingState {
  _$CharactersLoadingState();

  @override
  String toString() {
    return 'CharactersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharactersLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function(List<Character> characters, int totalLoaded,
            List<Character> lastsLoaded)
        loaded,
    required TResult Function() loading,
    required TResult Function() loadingMorePages,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function(List<Character> characters, int totalLoaded,
            List<Character> lastsLoaded)?
        loaded,
    TResult? Function()? loading,
    TResult? Function()? loadingMorePages,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function(List<Character> characters, int totalLoaded,
            List<Character> lastsLoaded)?
        loaded,
    TResult Function()? loading,
    TResult Function()? loadingMorePages,
    TResult Function()? empty,
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
    required TResult Function(CharactersFailedState value) error,
    required TResult Function(CharactersLoadedState value) loaded,
    required TResult Function(CharactersLoadingState value) loading,
    required TResult Function(CharactersLoadingMorePagesState value)
        loadingMorePages,
    required TResult Function(CharactersEmptyState value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersFailedState value)? error,
    TResult? Function(CharactersLoadedState value)? loaded,
    TResult? Function(CharactersLoadingState value)? loading,
    TResult? Function(CharactersLoadingMorePagesState value)? loadingMorePages,
    TResult? Function(CharactersEmptyState value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersFailedState value)? error,
    TResult Function(CharactersLoadedState value)? loaded,
    TResult Function(CharactersLoadingState value)? loading,
    TResult Function(CharactersLoadingMorePagesState value)? loadingMorePages,
    TResult Function(CharactersEmptyState value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CharactersLoadingState implements CharactersState {
  factory CharactersLoadingState() = _$CharactersLoadingState;
}

/// @nodoc
abstract class _$$CharactersLoadingMorePagesStateCopyWith<$Res> {
  factory _$$CharactersLoadingMorePagesStateCopyWith(
          _$CharactersLoadingMorePagesState value,
          $Res Function(_$CharactersLoadingMorePagesState) then) =
      __$$CharactersLoadingMorePagesStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharactersLoadingMorePagesStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res,
        _$CharactersLoadingMorePagesState>
    implements _$$CharactersLoadingMorePagesStateCopyWith<$Res> {
  __$$CharactersLoadingMorePagesStateCopyWithImpl(
      _$CharactersLoadingMorePagesState _value,
      $Res Function(_$CharactersLoadingMorePagesState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharactersLoadingMorePagesState
    implements CharactersLoadingMorePagesState {
  _$CharactersLoadingMorePagesState();

  @override
  String toString() {
    return 'CharactersState.loadingMorePages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersLoadingMorePagesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function(List<Character> characters, int totalLoaded,
            List<Character> lastsLoaded)
        loaded,
    required TResult Function() loading,
    required TResult Function() loadingMorePages,
    required TResult Function() empty,
  }) {
    return loadingMorePages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function(List<Character> characters, int totalLoaded,
            List<Character> lastsLoaded)?
        loaded,
    TResult? Function()? loading,
    TResult? Function()? loadingMorePages,
    TResult? Function()? empty,
  }) {
    return loadingMorePages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function(List<Character> characters, int totalLoaded,
            List<Character> lastsLoaded)?
        loaded,
    TResult Function()? loading,
    TResult Function()? loadingMorePages,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (loadingMorePages != null) {
      return loadingMorePages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersFailedState value) error,
    required TResult Function(CharactersLoadedState value) loaded,
    required TResult Function(CharactersLoadingState value) loading,
    required TResult Function(CharactersLoadingMorePagesState value)
        loadingMorePages,
    required TResult Function(CharactersEmptyState value) empty,
  }) {
    return loadingMorePages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersFailedState value)? error,
    TResult? Function(CharactersLoadedState value)? loaded,
    TResult? Function(CharactersLoadingState value)? loading,
    TResult? Function(CharactersLoadingMorePagesState value)? loadingMorePages,
    TResult? Function(CharactersEmptyState value)? empty,
  }) {
    return loadingMorePages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersFailedState value)? error,
    TResult Function(CharactersLoadedState value)? loaded,
    TResult Function(CharactersLoadingState value)? loading,
    TResult Function(CharactersLoadingMorePagesState value)? loadingMorePages,
    TResult Function(CharactersEmptyState value)? empty,
    required TResult orElse(),
  }) {
    if (loadingMorePages != null) {
      return loadingMorePages(this);
    }
    return orElse();
  }
}

abstract class CharactersLoadingMorePagesState implements CharactersState {
  factory CharactersLoadingMorePagesState() = _$CharactersLoadingMorePagesState;
}

/// @nodoc
abstract class _$$CharactersEmptyStateCopyWith<$Res> {
  factory _$$CharactersEmptyStateCopyWith(_$CharactersEmptyState value,
          $Res Function(_$CharactersEmptyState) then) =
      __$$CharactersEmptyStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharactersEmptyStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$CharactersEmptyState>
    implements _$$CharactersEmptyStateCopyWith<$Res> {
  __$$CharactersEmptyStateCopyWithImpl(_$CharactersEmptyState _value,
      $Res Function(_$CharactersEmptyState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharactersEmptyState implements CharactersEmptyState {
  _$CharactersEmptyState();

  @override
  String toString() {
    return 'CharactersState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharactersEmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function(List<Character> characters, int totalLoaded,
            List<Character> lastsLoaded)
        loaded,
    required TResult Function() loading,
    required TResult Function() loadingMorePages,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function(List<Character> characters, int totalLoaded,
            List<Character> lastsLoaded)?
        loaded,
    TResult? Function()? loading,
    TResult? Function()? loadingMorePages,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function(List<Character> characters, int totalLoaded,
            List<Character> lastsLoaded)?
        loaded,
    TResult Function()? loading,
    TResult Function()? loadingMorePages,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersFailedState value) error,
    required TResult Function(CharactersLoadedState value) loaded,
    required TResult Function(CharactersLoadingState value) loading,
    required TResult Function(CharactersLoadingMorePagesState value)
        loadingMorePages,
    required TResult Function(CharactersEmptyState value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersFailedState value)? error,
    TResult? Function(CharactersLoadedState value)? loaded,
    TResult? Function(CharactersLoadingState value)? loading,
    TResult? Function(CharactersLoadingMorePagesState value)? loadingMorePages,
    TResult? Function(CharactersEmptyState value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersFailedState value)? error,
    TResult Function(CharactersLoadedState value)? loaded,
    TResult Function(CharactersLoadingState value)? loading,
    TResult Function(CharactersLoadingMorePagesState value)? loadingMorePages,
    TResult Function(CharactersEmptyState value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class CharactersEmptyState implements CharactersState {
  factory CharactersEmptyState() = _$CharactersEmptyState;
}
