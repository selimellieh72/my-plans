// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PlanTearOff {
  const _$PlanTearOff();

// ignore: unused_element
  _Plan call(
      {@HiveField(2) String id,
      @HiveField(0) String title,
      @HiveField(1) List<Objective> objectives}) {
    return _Plan(
      id: id,
      title: title,
      objectives: objectives,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Plan = _$PlanTearOff();

/// @nodoc
mixin _$Plan {
  @HiveField(2)
  String get id;
  @HiveField(0)
  String get title;
  @HiveField(1)
  List<Objective> get objectives;

  $PlanCopyWith<Plan> get copyWith;
}

/// @nodoc
abstract class $PlanCopyWith<$Res> {
  factory $PlanCopyWith(Plan value, $Res Function(Plan) then) =
      _$PlanCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(2) String id,
      @HiveField(0) String title,
      @HiveField(1) List<Objective> objectives});
}

/// @nodoc
class _$PlanCopyWithImpl<$Res> implements $PlanCopyWith<$Res> {
  _$PlanCopyWithImpl(this._value, this._then);

  final Plan _value;
  // ignore: unused_field
  final $Res Function(Plan) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object objectives = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      objectives: objectives == freezed
          ? _value.objectives
          : objectives as List<Objective>,
    ));
  }
}

/// @nodoc
abstract class _$PlanCopyWith<$Res> implements $PlanCopyWith<$Res> {
  factory _$PlanCopyWith(_Plan value, $Res Function(_Plan) then) =
      __$PlanCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(2) String id,
      @HiveField(0) String title,
      @HiveField(1) List<Objective> objectives});
}

/// @nodoc
class __$PlanCopyWithImpl<$Res> extends _$PlanCopyWithImpl<$Res>
    implements _$PlanCopyWith<$Res> {
  __$PlanCopyWithImpl(_Plan _value, $Res Function(_Plan) _then)
      : super(_value, (v) => _then(v as _Plan));

  @override
  _Plan get _value => super._value as _Plan;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object objectives = freezed,
  }) {
    return _then(_Plan(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      objectives: objectives == freezed
          ? _value.objectives
          : objectives as List<Objective>,
    ));
  }
}

@HiveType(typeId: 1, adapterName: 'PlanAdapter')

/// @nodoc
class _$_Plan extends _Plan {
  const _$_Plan(
      {@HiveField(2) this.id,
      @HiveField(0) this.title,
      @HiveField(1) this.objectives})
      : super._();

  @override
  @HiveField(2)
  final String id;
  @override
  @HiveField(0)
  final String title;
  @override
  @HiveField(1)
  final List<Objective> objectives;

  @override
  String toString() {
    return 'Plan(id: $id, title: $title, objectives: $objectives)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Plan &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.objectives, objectives) ||
                const DeepCollectionEquality()
                    .equals(other.objectives, objectives)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(objectives);

  @override
  _$PlanCopyWith<_Plan> get copyWith =>
      __$PlanCopyWithImpl<_Plan>(this, _$identity);
}

abstract class _Plan extends Plan {
  const _Plan._() : super._();
  const factory _Plan(
      {@HiveField(2) String id,
      @HiveField(0) String title,
      @HiveField(1) List<Objective> objectives}) = _$_Plan;

  @override
  @HiveField(2)
  String get id;
  @override
  @HiveField(0)
  String get title;
  @override
  @HiveField(1)
  List<Objective> get objectives;
  @override
  _$PlanCopyWith<_Plan> get copyWith;
}
