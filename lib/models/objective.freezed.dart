// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'objective.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ObjectiveTearOff {
  const _$ObjectiveTearOff();

// ignore: unused_element
  _Objective call(
      {@required @HiveField(2) String id,
      @required @HiveField(0) String text,
      @required @HiveField(1) bool isCompleted}) {
    return _Objective(
      id: id,
      text: text,
      isCompleted: isCompleted,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Objective = _$ObjectiveTearOff();

/// @nodoc
mixin _$Objective {
  @HiveField(2)
  String get id;
  @HiveField(0)
  String get text;
  @HiveField(1)
  bool get isCompleted;

  $ObjectiveCopyWith<Objective> get copyWith;
}

/// @nodoc
abstract class $ObjectiveCopyWith<$Res> {
  factory $ObjectiveCopyWith(Objective value, $Res Function(Objective) then) =
      _$ObjectiveCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(2) String id,
      @HiveField(0) String text,
      @HiveField(1) bool isCompleted});
}

/// @nodoc
class _$ObjectiveCopyWithImpl<$Res> implements $ObjectiveCopyWith<$Res> {
  _$ObjectiveCopyWithImpl(this._value, this._then);

  final Objective _value;
  // ignore: unused_field
  final $Res Function(Objective) _then;

  @override
  $Res call({
    Object id = freezed,
    Object text = freezed,
    Object isCompleted = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      text: text == freezed ? _value.text : text as String,
      isCompleted:
          isCompleted == freezed ? _value.isCompleted : isCompleted as bool,
    ));
  }
}

/// @nodoc
abstract class _$ObjectiveCopyWith<$Res> implements $ObjectiveCopyWith<$Res> {
  factory _$ObjectiveCopyWith(
          _Objective value, $Res Function(_Objective) then) =
      __$ObjectiveCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(2) String id,
      @HiveField(0) String text,
      @HiveField(1) bool isCompleted});
}

/// @nodoc
class __$ObjectiveCopyWithImpl<$Res> extends _$ObjectiveCopyWithImpl<$Res>
    implements _$ObjectiveCopyWith<$Res> {
  __$ObjectiveCopyWithImpl(_Objective _value, $Res Function(_Objective) _then)
      : super(_value, (v) => _then(v as _Objective));

  @override
  _Objective get _value => super._value as _Objective;

  @override
  $Res call({
    Object id = freezed,
    Object text = freezed,
    Object isCompleted = freezed,
  }) {
    return _then(_Objective(
      id: id == freezed ? _value.id : id as String,
      text: text == freezed ? _value.text : text as String,
      isCompleted:
          isCompleted == freezed ? _value.isCompleted : isCompleted as bool,
    ));
  }
}

@HiveType(typeId: 0, adapterName: 'ObjectiveAdapter')

/// @nodoc
class _$_Objective implements _Objective {
  const _$_Objective(
      {@required @HiveField(2) this.id,
      @required @HiveField(0) this.text,
      @required @HiveField(1) this.isCompleted})
      : assert(id != null),
        assert(text != null),
        assert(isCompleted != null);

  @override
  @HiveField(2)
  final String id;
  @override
  @HiveField(0)
  final String text;
  @override
  @HiveField(1)
  final bool isCompleted;

  @override
  String toString() {
    return 'Objective(id: $id, text: $text, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Objective &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.isCompleted, isCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.isCompleted, isCompleted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(isCompleted);

  @override
  _$ObjectiveCopyWith<_Objective> get copyWith =>
      __$ObjectiveCopyWithImpl<_Objective>(this, _$identity);
}

abstract class _Objective implements Objective {
  const factory _Objective(
      {@required @HiveField(2) String id,
      @required @HiveField(0) String text,
      @required @HiveField(1) bool isCompleted}) = _$_Objective;

  @override
  @HiveField(2)
  String get id;
  @override
  @HiveField(0)
  String get text;
  @override
  @HiveField(1)
  bool get isCompleted;
  @override
  _$ObjectiveCopyWith<_Objective> get copyWith;
}
