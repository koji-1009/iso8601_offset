// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SampleJson {

 String get id;@DateTimeConverter() DateTime get dateTime;@DateTimeOrNullConverter() DateTime? get dateTimeNull;
/// Create a copy of SampleJson
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SampleJsonCopyWith<SampleJson> get copyWith => _$SampleJsonCopyWithImpl<SampleJson>(this as SampleJson, _$identity);

  /// Serializes this SampleJson to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SampleJson&&(identical(other.id, id) || other.id == id)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.dateTimeNull, dateTimeNull) || other.dateTimeNull == dateTimeNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dateTime,dateTimeNull);

@override
String toString() {
  return 'SampleJson(id: $id, dateTime: $dateTime, dateTimeNull: $dateTimeNull)';
}


}

/// @nodoc
abstract mixin class $SampleJsonCopyWith<$Res>  {
  factory $SampleJsonCopyWith(SampleJson value, $Res Function(SampleJson) _then) = _$SampleJsonCopyWithImpl;
@useResult
$Res call({
 String id,@DateTimeConverter() DateTime dateTime,@DateTimeOrNullConverter() DateTime? dateTimeNull
});




}
/// @nodoc
class _$SampleJsonCopyWithImpl<$Res>
    implements $SampleJsonCopyWith<$Res> {
  _$SampleJsonCopyWithImpl(this._self, this._then);

  final SampleJson _self;
  final $Res Function(SampleJson) _then;

/// Create a copy of SampleJson
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? dateTime = null,Object? dateTimeNull = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,dateTimeNull: freezed == dateTimeNull ? _self.dateTimeNull : dateTimeNull // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [SampleJson].
extension SampleJsonPatterns on SampleJson {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SampleJson value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SampleJson() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SampleJson value)  $default,){
final _that = this;
switch (_that) {
case _SampleJson():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SampleJson value)?  $default,){
final _that = this;
switch (_that) {
case _SampleJson() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @DateTimeConverter()  DateTime dateTime, @DateTimeOrNullConverter()  DateTime? dateTimeNull)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SampleJson() when $default != null:
return $default(_that.id,_that.dateTime,_that.dateTimeNull);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @DateTimeConverter()  DateTime dateTime, @DateTimeOrNullConverter()  DateTime? dateTimeNull)  $default,) {final _that = this;
switch (_that) {
case _SampleJson():
return $default(_that.id,_that.dateTime,_that.dateTimeNull);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @DateTimeConverter()  DateTime dateTime, @DateTimeOrNullConverter()  DateTime? dateTimeNull)?  $default,) {final _that = this;
switch (_that) {
case _SampleJson() when $default != null:
return $default(_that.id,_that.dateTime,_that.dateTimeNull);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SampleJson implements SampleJson {
  const _SampleJson({required this.id, @DateTimeConverter() required this.dateTime, @DateTimeOrNullConverter() required this.dateTimeNull});
  factory _SampleJson.fromJson(Map<String, dynamic> json) => _$SampleJsonFromJson(json);

@override final  String id;
@override@DateTimeConverter() final  DateTime dateTime;
@override@DateTimeOrNullConverter() final  DateTime? dateTimeNull;

/// Create a copy of SampleJson
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SampleJsonCopyWith<_SampleJson> get copyWith => __$SampleJsonCopyWithImpl<_SampleJson>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SampleJsonToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SampleJson&&(identical(other.id, id) || other.id == id)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.dateTimeNull, dateTimeNull) || other.dateTimeNull == dateTimeNull));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dateTime,dateTimeNull);

@override
String toString() {
  return 'SampleJson(id: $id, dateTime: $dateTime, dateTimeNull: $dateTimeNull)';
}


}

/// @nodoc
abstract mixin class _$SampleJsonCopyWith<$Res> implements $SampleJsonCopyWith<$Res> {
  factory _$SampleJsonCopyWith(_SampleJson value, $Res Function(_SampleJson) _then) = __$SampleJsonCopyWithImpl;
@override @useResult
$Res call({
 String id,@DateTimeConverter() DateTime dateTime,@DateTimeOrNullConverter() DateTime? dateTimeNull
});




}
/// @nodoc
class __$SampleJsonCopyWithImpl<$Res>
    implements _$SampleJsonCopyWith<$Res> {
  __$SampleJsonCopyWithImpl(this._self, this._then);

  final _SampleJson _self;
  final $Res Function(_SampleJson) _then;

/// Create a copy of SampleJson
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? dateTime = null,Object? dateTimeNull = freezed,}) {
  return _then(_SampleJson(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,dateTimeNull: freezed == dateTimeNull ? _self.dateTimeNull : dateTimeNull // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
