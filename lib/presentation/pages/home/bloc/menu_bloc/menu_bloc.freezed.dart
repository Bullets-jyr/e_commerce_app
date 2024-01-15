// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MenuEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuEventCopyWith<$Res> {
  factory $MenuEventCopyWith(MenuEvent value, $Res Function(MenuEvent) then) =
      _$MenuEventCopyWithImpl<$Res, MenuEvent>;
}

/// @nodoc
class _$MenuEventCopyWithImpl<$Res, $Val extends MenuEvent>
    implements $MenuEventCopyWith<$Res> {
  _$MenuEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'MenuEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MenuEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$MenuState {
  Status get status => throw _privateConstructorUsedError;
  MallType get mallType => throw _privateConstructorUsedError;
  List<Menu> get menus => throw _privateConstructorUsedError;
  ErrorResponse get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuStateCopyWith<MenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuStateCopyWith<$Res> {
  factory $MenuStateCopyWith(MenuState value, $Res Function(MenuState) then) =
      _$MenuStateCopyWithImpl<$Res, MenuState>;
  @useResult
  $Res call(
      {Status status,
      MallType mallType,
      List<Menu> menus,
      ErrorResponse error});
}

/// @nodoc
class _$MenuStateCopyWithImpl<$Res, $Val extends MenuState>
    implements $MenuStateCopyWith<$Res> {
  _$MenuStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? mallType = null,
    Object? menus = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      mallType: null == mallType
          ? _value.mallType
          : mallType // ignore: cast_nullable_to_non_nullable
              as MallType,
      menus: null == menus
          ? _value.menus
          : menus // ignore: cast_nullable_to_non_nullable
              as List<Menu>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponse,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenuStateImplCopyWith<$Res>
    implements $MenuStateCopyWith<$Res> {
  factory _$$MenuStateImplCopyWith(
          _$MenuStateImpl value, $Res Function(_$MenuStateImpl) then) =
      __$$MenuStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      MallType mallType,
      List<Menu> menus,
      ErrorResponse error});
}

/// @nodoc
class __$$MenuStateImplCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res, _$MenuStateImpl>
    implements _$$MenuStateImplCopyWith<$Res> {
  __$$MenuStateImplCopyWithImpl(
      _$MenuStateImpl _value, $Res Function(_$MenuStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? mallType = null,
    Object? menus = null,
    Object? error = null,
  }) {
    return _then(_$MenuStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      mallType: null == mallType
          ? _value.mallType
          : mallType // ignore: cast_nullable_to_non_nullable
              as MallType,
      menus: null == menus
          ? _value._menus
          : menus // ignore: cast_nullable_to_non_nullable
              as List<Menu>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponse,
    ));
  }
}

/// @nodoc

class _$MenuStateImpl implements _MenuState {
  _$MenuStateImpl(
      {this.status = Status.initial,
      this.mallType = MallType.market,
      final List<Menu> menus = const <Menu>[],
      this.error = const ErrorResponse()})
      : _menus = menus;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final MallType mallType;
  final List<Menu> _menus;
  @override
  @JsonKey()
  List<Menu> get menus {
    if (_menus is EqualUnmodifiableListView) return _menus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menus);
  }

  @override
  @JsonKey()
  final ErrorResponse error;

  @override
  String toString() {
    return 'MenuState(status: $status, mallType: $mallType, menus: $menus, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.mallType, mallType) ||
                other.mallType == mallType) &&
            const DeepCollectionEquality().equals(other._menus, _menus) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, mallType,
      const DeepCollectionEquality().hash(_menus), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuStateImplCopyWith<_$MenuStateImpl> get copyWith =>
      __$$MenuStateImplCopyWithImpl<_$MenuStateImpl>(this, _$identity);
}

abstract class _MenuState implements MenuState {
  factory _MenuState(
      {final Status status,
      final MallType mallType,
      final List<Menu> menus,
      final ErrorResponse error}) = _$MenuStateImpl;

  @override
  Status get status;
  @override
  MallType get mallType;
  @override
  List<Menu> get menus;
  @override
  ErrorResponse get error;
  @override
  @JsonKey(ignore: true)
  _$$MenuStateImplCopyWith<_$MenuStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
