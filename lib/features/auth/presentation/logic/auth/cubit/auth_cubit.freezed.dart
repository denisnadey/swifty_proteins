// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  bool get isBiometricEnabled => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isBiometricEnabled) initial,
    required TResult Function(bool isBiometricEnabled) loading,
    required TResult Function(bool isBiometricEnabled) registered,
    required TResult Function(bool isBiometricEnabled) loggedIn,
    required TResult Function(String message, bool isBiometricEnabled) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isBiometricEnabled)? initial,
    TResult? Function(bool isBiometricEnabled)? loading,
    TResult? Function(bool isBiometricEnabled)? registered,
    TResult? Function(bool isBiometricEnabled)? loggedIn,
    TResult? Function(String message, bool isBiometricEnabled)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isBiometricEnabled)? initial,
    TResult Function(bool isBiometricEnabled)? loading,
    TResult Function(bool isBiometricEnabled)? registered,
    TResult Function(bool isBiometricEnabled)? loggedIn,
    TResult Function(String message, bool isBiometricEnabled)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({bool isBiometricEnabled});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBiometricEnabled = null,
  }) {
    return _then(_value.copyWith(
      isBiometricEnabled: null == isBiometricEnabled
          ? _value.isBiometricEnabled
          : isBiometricEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isBiometricEnabled});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBiometricEnabled = null,
  }) {
    return _then(_$InitialImpl(
      isBiometricEnabled: null == isBiometricEnabled
          ? _value.isBiometricEnabled
          : isBiometricEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl({this.isBiometricEnabled = false});

  @override
  @JsonKey()
  final bool isBiometricEnabled;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.initial(isBiometricEnabled: $isBiometricEnabled)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.initial'))
      ..add(DiagnosticsProperty('isBiometricEnabled', isBiometricEnabled));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isBiometricEnabled, isBiometricEnabled) ||
                other.isBiometricEnabled == isBiometricEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isBiometricEnabled);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isBiometricEnabled) initial,
    required TResult Function(bool isBiometricEnabled) loading,
    required TResult Function(bool isBiometricEnabled) registered,
    required TResult Function(bool isBiometricEnabled) loggedIn,
    required TResult Function(String message, bool isBiometricEnabled) error,
  }) {
    return initial(isBiometricEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isBiometricEnabled)? initial,
    TResult? Function(bool isBiometricEnabled)? loading,
    TResult? Function(bool isBiometricEnabled)? registered,
    TResult? Function(bool isBiometricEnabled)? loggedIn,
    TResult? Function(String message, bool isBiometricEnabled)? error,
  }) {
    return initial?.call(isBiometricEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isBiometricEnabled)? initial,
    TResult Function(bool isBiometricEnabled)? loading,
    TResult Function(bool isBiometricEnabled)? registered,
    TResult Function(bool isBiometricEnabled)? loggedIn,
    TResult Function(String message, bool isBiometricEnabled)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isBiometricEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial({final bool isBiometricEnabled}) = _$InitialImpl;

  @override
  bool get isBiometricEnabled;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isBiometricEnabled});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBiometricEnabled = null,
  }) {
    return _then(_$LoadingImpl(
      isBiometricEnabled: null == isBiometricEnabled
          ? _value.isBiometricEnabled
          : isBiometricEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements _Loading {
  const _$LoadingImpl({this.isBiometricEnabled = false});

  @override
  @JsonKey()
  final bool isBiometricEnabled;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.loading(isBiometricEnabled: $isBiometricEnabled)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.loading'))
      ..add(DiagnosticsProperty('isBiometricEnabled', isBiometricEnabled));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.isBiometricEnabled, isBiometricEnabled) ||
                other.isBiometricEnabled == isBiometricEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isBiometricEnabled);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isBiometricEnabled) initial,
    required TResult Function(bool isBiometricEnabled) loading,
    required TResult Function(bool isBiometricEnabled) registered,
    required TResult Function(bool isBiometricEnabled) loggedIn,
    required TResult Function(String message, bool isBiometricEnabled) error,
  }) {
    return loading(isBiometricEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isBiometricEnabled)? initial,
    TResult? Function(bool isBiometricEnabled)? loading,
    TResult? Function(bool isBiometricEnabled)? registered,
    TResult? Function(bool isBiometricEnabled)? loggedIn,
    TResult? Function(String message, bool isBiometricEnabled)? error,
  }) {
    return loading?.call(isBiometricEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isBiometricEnabled)? initial,
    TResult Function(bool isBiometricEnabled)? loading,
    TResult Function(bool isBiometricEnabled)? registered,
    TResult Function(bool isBiometricEnabled)? loggedIn,
    TResult Function(String message, bool isBiometricEnabled)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isBiometricEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading({final bool isBiometricEnabled}) = _$LoadingImpl;

  @override
  bool get isBiometricEnabled;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisteredImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$RegisteredImplCopyWith(
          _$RegisteredImpl value, $Res Function(_$RegisteredImpl) then) =
      __$$RegisteredImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isBiometricEnabled});
}

/// @nodoc
class __$$RegisteredImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisteredImpl>
    implements _$$RegisteredImplCopyWith<$Res> {
  __$$RegisteredImplCopyWithImpl(
      _$RegisteredImpl _value, $Res Function(_$RegisteredImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBiometricEnabled = null,
  }) {
    return _then(_$RegisteredImpl(
      isBiometricEnabled: null == isBiometricEnabled
          ? _value.isBiometricEnabled
          : isBiometricEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RegisteredImpl with DiagnosticableTreeMixin implements _Registered {
  const _$RegisteredImpl({this.isBiometricEnabled = false});

  @override
  @JsonKey()
  final bool isBiometricEnabled;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.registered(isBiometricEnabled: $isBiometricEnabled)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.registered'))
      ..add(DiagnosticsProperty('isBiometricEnabled', isBiometricEnabled));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisteredImpl &&
            (identical(other.isBiometricEnabled, isBiometricEnabled) ||
                other.isBiometricEnabled == isBiometricEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isBiometricEnabled);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisteredImplCopyWith<_$RegisteredImpl> get copyWith =>
      __$$RegisteredImplCopyWithImpl<_$RegisteredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isBiometricEnabled) initial,
    required TResult Function(bool isBiometricEnabled) loading,
    required TResult Function(bool isBiometricEnabled) registered,
    required TResult Function(bool isBiometricEnabled) loggedIn,
    required TResult Function(String message, bool isBiometricEnabled) error,
  }) {
    return registered(isBiometricEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isBiometricEnabled)? initial,
    TResult? Function(bool isBiometricEnabled)? loading,
    TResult? Function(bool isBiometricEnabled)? registered,
    TResult? Function(bool isBiometricEnabled)? loggedIn,
    TResult? Function(String message, bool isBiometricEnabled)? error,
  }) {
    return registered?.call(isBiometricEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isBiometricEnabled)? initial,
    TResult Function(bool isBiometricEnabled)? loading,
    TResult Function(bool isBiometricEnabled)? registered,
    TResult Function(bool isBiometricEnabled)? loggedIn,
    TResult Function(String message, bool isBiometricEnabled)? error,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(isBiometricEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return registered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return registered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this);
    }
    return orElse();
  }
}

abstract class _Registered implements AuthState {
  const factory _Registered({final bool isBiometricEnabled}) = _$RegisteredImpl;

  @override
  bool get isBiometricEnabled;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisteredImplCopyWith<_$RegisteredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggedInImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isBiometricEnabled});
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBiometricEnabled = null,
  }) {
    return _then(_$LoggedInImpl(
      isBiometricEnabled: null == isBiometricEnabled
          ? _value.isBiometricEnabled
          : isBiometricEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoggedInImpl with DiagnosticableTreeMixin implements _LoggedIn {
  const _$LoggedInImpl({this.isBiometricEnabled = false});

  @override
  @JsonKey()
  final bool isBiometricEnabled;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.loggedIn(isBiometricEnabled: $isBiometricEnabled)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.loggedIn'))
      ..add(DiagnosticsProperty('isBiometricEnabled', isBiometricEnabled));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedInImpl &&
            (identical(other.isBiometricEnabled, isBiometricEnabled) ||
                other.isBiometricEnabled == isBiometricEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isBiometricEnabled);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      __$$LoggedInImplCopyWithImpl<_$LoggedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isBiometricEnabled) initial,
    required TResult Function(bool isBiometricEnabled) loading,
    required TResult Function(bool isBiometricEnabled) registered,
    required TResult Function(bool isBiometricEnabled) loggedIn,
    required TResult Function(String message, bool isBiometricEnabled) error,
  }) {
    return loggedIn(isBiometricEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isBiometricEnabled)? initial,
    TResult? Function(bool isBiometricEnabled)? loading,
    TResult? Function(bool isBiometricEnabled)? registered,
    TResult? Function(bool isBiometricEnabled)? loggedIn,
    TResult? Function(String message, bool isBiometricEnabled)? error,
  }) {
    return loggedIn?.call(isBiometricEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isBiometricEnabled)? initial,
    TResult Function(bool isBiometricEnabled)? loading,
    TResult Function(bool isBiometricEnabled)? registered,
    TResult Function(bool isBiometricEnabled)? loggedIn,
    TResult Function(String message, bool isBiometricEnabled)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(isBiometricEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn implements AuthState {
  const factory _LoggedIn({final bool isBiometricEnabled}) = _$LoggedInImpl;

  @override
  bool get isBiometricEnabled;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, bool isBiometricEnabled});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isBiometricEnabled = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isBiometricEnabled: null == isBiometricEnabled
          ? _value.isBiometricEnabled
          : isBiometricEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ErrorImpl with DiagnosticableTreeMixin implements _Error {
  const _$ErrorImpl(this.message, {this.isBiometricEnabled = false});

  @override
  final String message;
  @override
  @JsonKey()
  final bool isBiometricEnabled;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.error(message: $message, isBiometricEnabled: $isBiometricEnabled)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.error'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('isBiometricEnabled', isBiometricEnabled));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isBiometricEnabled, isBiometricEnabled) ||
                other.isBiometricEnabled == isBiometricEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, isBiometricEnabled);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isBiometricEnabled) initial,
    required TResult Function(bool isBiometricEnabled) loading,
    required TResult Function(bool isBiometricEnabled) registered,
    required TResult Function(bool isBiometricEnabled) loggedIn,
    required TResult Function(String message, bool isBiometricEnabled) error,
  }) {
    return error(message, isBiometricEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isBiometricEnabled)? initial,
    TResult? Function(bool isBiometricEnabled)? loading,
    TResult? Function(bool isBiometricEnabled)? registered,
    TResult? Function(bool isBiometricEnabled)? loggedIn,
    TResult? Function(String message, bool isBiometricEnabled)? error,
  }) {
    return error?.call(message, isBiometricEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isBiometricEnabled)? initial,
    TResult Function(bool isBiometricEnabled)? loading,
    TResult Function(bool isBiometricEnabled)? registered,
    TResult Function(bool isBiometricEnabled)? loggedIn,
    TResult Function(String message, bool isBiometricEnabled)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, isBiometricEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(final String message, {final bool isBiometricEnabled}) =
      _$ErrorImpl;

  String get message;
  @override
  bool get isBiometricEnabled;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
