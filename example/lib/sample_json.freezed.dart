// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sample_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SampleJson _$SampleJsonFromJson(Map<String, dynamic> json) {
  return _SampleJson.fromJson(json);
}

/// @nodoc
class _$SampleJsonTearOff {
  const _$SampleJsonTearOff();

  _SampleJson call(
      {required String id,
      @DateTimeConverter() required DateTime dateTime,
      @DateTimeOrNullConverter() required DateTime? dateTimeNull}) {
    return _SampleJson(
      id: id,
      dateTime: dateTime,
      dateTimeNull: dateTimeNull,
    );
  }

  SampleJson fromJson(Map<String, Object?> json) {
    return SampleJson.fromJson(json);
  }
}

/// @nodoc
const $SampleJson = _$SampleJsonTearOff();

/// @nodoc
mixin _$SampleJson {
  String get id => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get dateTime => throw _privateConstructorUsedError;
  @DateTimeOrNullConverter()
  DateTime? get dateTimeNull => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SampleJsonCopyWith<SampleJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleJsonCopyWith<$Res> {
  factory $SampleJsonCopyWith(
          SampleJson value, $Res Function(SampleJson) then) =
      _$SampleJsonCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @DateTimeConverter() DateTime dateTime,
      @DateTimeOrNullConverter() DateTime? dateTimeNull});
}

/// @nodoc
class _$SampleJsonCopyWithImpl<$Res> implements $SampleJsonCopyWith<$Res> {
  _$SampleJsonCopyWithImpl(this._value, this._then);

  final SampleJson _value;
  // ignore: unused_field
  final $Res Function(SampleJson) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? dateTime = freezed,
    Object? dateTimeNull = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateTimeNull: dateTimeNull == freezed
          ? _value.dateTimeNull
          : dateTimeNull // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$SampleJsonCopyWith<$Res> implements $SampleJsonCopyWith<$Res> {
  factory _$SampleJsonCopyWith(
          _SampleJson value, $Res Function(_SampleJson) then) =
      __$SampleJsonCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @DateTimeConverter() DateTime dateTime,
      @DateTimeOrNullConverter() DateTime? dateTimeNull});
}

/// @nodoc
class __$SampleJsonCopyWithImpl<$Res> extends _$SampleJsonCopyWithImpl<$Res>
    implements _$SampleJsonCopyWith<$Res> {
  __$SampleJsonCopyWithImpl(
      _SampleJson _value, $Res Function(_SampleJson) _then)
      : super(_value, (v) => _then(v as _SampleJson));

  @override
  _SampleJson get _value => super._value as _SampleJson;

  @override
  $Res call({
    Object? id = freezed,
    Object? dateTime = freezed,
    Object? dateTimeNull = freezed,
  }) {
    return _then(_SampleJson(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateTimeNull: dateTimeNull == freezed
          ? _value.dateTimeNull
          : dateTimeNull // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SampleJson with DiagnosticableTreeMixin implements _SampleJson {
  const _$_SampleJson(
      {required this.id,
      @DateTimeConverter() required this.dateTime,
      @DateTimeOrNullConverter() required this.dateTimeNull});

  factory _$_SampleJson.fromJson(Map<String, dynamic> json) =>
      _$$_SampleJsonFromJson(json);

  @override
  final String id;
  @override
  @DateTimeConverter()
  final DateTime dateTime;
  @override
  @DateTimeOrNullConverter()
  final DateTime? dateTimeNull;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SampleJson(id: $id, dateTime: $dateTime, dateTimeNull: $dateTimeNull)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SampleJson'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('dateTime', dateTime))
      ..add(DiagnosticsProperty('dateTimeNull', dateTimeNull));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SampleJson &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality()
                .equals(other.dateTimeNull, dateTimeNull));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(dateTimeNull));

  @JsonKey(ignore: true)
  @override
  _$SampleJsonCopyWith<_SampleJson> get copyWith =>
      __$SampleJsonCopyWithImpl<_SampleJson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SampleJsonToJson(this);
  }
}

abstract class _SampleJson implements SampleJson {
  const factory _SampleJson(
          {required String id,
          @DateTimeConverter() required DateTime dateTime,
          @DateTimeOrNullConverter() required DateTime? dateTimeNull}) =
      _$_SampleJson;

  factory _SampleJson.fromJson(Map<String, dynamic> json) =
      _$_SampleJson.fromJson;

  @override
  String get id;
  @override
  @DateTimeConverter()
  DateTime get dateTime;
  @override
  @DateTimeOrNullConverter()
  DateTime? get dateTimeNull;
  @override
  @JsonKey(ignore: true)
  _$SampleJsonCopyWith<_SampleJson> get copyWith =>
      throw _privateConstructorUsedError;
}
