// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Stats _$StatsFromJson(Map<String, dynamic> json) {
  return _Stats.fromJson(json);
}

/// @nodoc
mixin _$Stats {
  int get harmless => throw _privateConstructorUsedError;
  @JsonKey(name: "type-unsupported")
  int? get typeUnsupported => throw _privateConstructorUsedError;
  int get suspicious => throw _privateConstructorUsedError;
  @JsonKey(name: "confirmed-timeout")
  int? get confirmedTimeout => throw _privateConstructorUsedError;
  int get timeout => throw _privateConstructorUsedError;
  int? get failure => throw _privateConstructorUsedError;
  int get malicious => throw _privateConstructorUsedError;
  int get undetected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsCopyWith<Stats> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsCopyWith<$Res> {
  factory $StatsCopyWith(Stats value, $Res Function(Stats) then) =
      _$StatsCopyWithImpl<$Res, Stats>;
  @useResult
  $Res call(
      {int harmless,
      @JsonKey(name: "type-unsupported") int? typeUnsupported,
      int suspicious,
      @JsonKey(name: "confirmed-timeout") int? confirmedTimeout,
      int timeout,
      int? failure,
      int malicious,
      int undetected});
}

/// @nodoc
class _$StatsCopyWithImpl<$Res, $Val extends Stats>
    implements $StatsCopyWith<$Res> {
  _$StatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? harmless = null,
    Object? typeUnsupported = freezed,
    Object? suspicious = null,
    Object? confirmedTimeout = freezed,
    Object? timeout = null,
    Object? failure = freezed,
    Object? malicious = null,
    Object? undetected = null,
  }) {
    return _then(_value.copyWith(
      harmless: null == harmless
          ? _value.harmless
          : harmless // ignore: cast_nullable_to_non_nullable
              as int,
      typeUnsupported: freezed == typeUnsupported
          ? _value.typeUnsupported
          : typeUnsupported // ignore: cast_nullable_to_non_nullable
              as int?,
      suspicious: null == suspicious
          ? _value.suspicious
          : suspicious // ignore: cast_nullable_to_non_nullable
              as int,
      confirmedTimeout: freezed == confirmedTimeout
          ? _value.confirmedTimeout
          : confirmedTimeout // ignore: cast_nullable_to_non_nullable
              as int?,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as int,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as int?,
      malicious: null == malicious
          ? _value.malicious
          : malicious // ignore: cast_nullable_to_non_nullable
              as int,
      undetected: null == undetected
          ? _value.undetected
          : undetected // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatsImplCopyWith<$Res> implements $StatsCopyWith<$Res> {
  factory _$$StatsImplCopyWith(
          _$StatsImpl value, $Res Function(_$StatsImpl) then) =
      __$$StatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int harmless,
      @JsonKey(name: "type-unsupported") int? typeUnsupported,
      int suspicious,
      @JsonKey(name: "confirmed-timeout") int? confirmedTimeout,
      int timeout,
      int? failure,
      int malicious,
      int undetected});
}

/// @nodoc
class __$$StatsImplCopyWithImpl<$Res>
    extends _$StatsCopyWithImpl<$Res, _$StatsImpl>
    implements _$$StatsImplCopyWith<$Res> {
  __$$StatsImplCopyWithImpl(
      _$StatsImpl _value, $Res Function(_$StatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? harmless = null,
    Object? typeUnsupported = freezed,
    Object? suspicious = null,
    Object? confirmedTimeout = freezed,
    Object? timeout = null,
    Object? failure = freezed,
    Object? malicious = null,
    Object? undetected = null,
  }) {
    return _then(_$StatsImpl(
      harmless: null == harmless
          ? _value.harmless
          : harmless // ignore: cast_nullable_to_non_nullable
              as int,
      typeUnsupported: freezed == typeUnsupported
          ? _value.typeUnsupported
          : typeUnsupported // ignore: cast_nullable_to_non_nullable
              as int?,
      suspicious: null == suspicious
          ? _value.suspicious
          : suspicious // ignore: cast_nullable_to_non_nullable
              as int,
      confirmedTimeout: freezed == confirmedTimeout
          ? _value.confirmedTimeout
          : confirmedTimeout // ignore: cast_nullable_to_non_nullable
              as int?,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as int,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as int?,
      malicious: null == malicious
          ? _value.malicious
          : malicious // ignore: cast_nullable_to_non_nullable
              as int,
      undetected: null == undetected
          ? _value.undetected
          : undetected // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatsImpl implements _Stats {
  const _$StatsImpl(
      {required this.harmless,
      @JsonKey(name: "type-unsupported") this.typeUnsupported,
      required this.suspicious,
      @JsonKey(name: "confirmed-timeout") this.confirmedTimeout,
      required this.timeout,
      this.failure,
      required this.malicious,
      required this.undetected});

  factory _$StatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatsImplFromJson(json);

  @override
  final int harmless;
  @override
  @JsonKey(name: "type-unsupported")
  final int? typeUnsupported;
  @override
  final int suspicious;
  @override
  @JsonKey(name: "confirmed-timeout")
  final int? confirmedTimeout;
  @override
  final int timeout;
  @override
  final int? failure;
  @override
  final int malicious;
  @override
  final int undetected;

  @override
  String toString() {
    return 'Stats(harmless: $harmless, typeUnsupported: $typeUnsupported, suspicious: $suspicious, confirmedTimeout: $confirmedTimeout, timeout: $timeout, failure: $failure, malicious: $malicious, undetected: $undetected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsImpl &&
            (identical(other.harmless, harmless) ||
                other.harmless == harmless) &&
            (identical(other.typeUnsupported, typeUnsupported) ||
                other.typeUnsupported == typeUnsupported) &&
            (identical(other.suspicious, suspicious) ||
                other.suspicious == suspicious) &&
            (identical(other.confirmedTimeout, confirmedTimeout) ||
                other.confirmedTimeout == confirmedTimeout) &&
            (identical(other.timeout, timeout) || other.timeout == timeout) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.malicious, malicious) ||
                other.malicious == malicious) &&
            (identical(other.undetected, undetected) ||
                other.undetected == undetected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, harmless, typeUnsupported,
      suspicious, confirmedTimeout, timeout, failure, malicious, undetected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsImplCopyWith<_$StatsImpl> get copyWith =>
      __$$StatsImplCopyWithImpl<_$StatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatsImplToJson(
      this,
    );
  }
}

abstract class _Stats implements Stats {
  const factory _Stats(
      {required final int harmless,
      @JsonKey(name: "type-unsupported") final int? typeUnsupported,
      required final int suspicious,
      @JsonKey(name: "confirmed-timeout") final int? confirmedTimeout,
      required final int timeout,
      final int? failure,
      required final int malicious,
      required final int undetected}) = _$StatsImpl;

  factory _Stats.fromJson(Map<String, dynamic> json) = _$StatsImpl.fromJson;

  @override
  int get harmless;
  @override
  @JsonKey(name: "type-unsupported")
  int? get typeUnsupported;
  @override
  int get suspicious;
  @override
  @JsonKey(name: "confirmed-timeout")
  int? get confirmedTimeout;
  @override
  int get timeout;
  @override
  int? get failure;
  @override
  int get malicious;
  @override
  int get undetected;
  @override
  @JsonKey(ignore: true)
  _$$StatsImplCopyWith<_$StatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
