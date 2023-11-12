// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnalysisData _$AnalysisDataFromJson(Map<String, dynamic> json) {
  return _AnalysisData.fromJson(json);
}

/// @nodoc
mixin _$AnalysisData {
  Attributes get attributes => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  Links get links => throw _privateConstructorUsedError;
  bool get isFile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnalysisDataCopyWith<AnalysisData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysisDataCopyWith<$Res> {
  factory $AnalysisDataCopyWith(
          AnalysisData value, $Res Function(AnalysisData) then) =
      _$AnalysisDataCopyWithImpl<$Res, AnalysisData>;
  @useResult
  $Res call(
      {Attributes attributes,
      String type,
      String id,
      Links links,
      bool isFile});

  $AttributesCopyWith<$Res> get attributes;
  $LinksCopyWith<$Res> get links;
}

/// @nodoc
class _$AnalysisDataCopyWithImpl<$Res, $Val extends AnalysisData>
    implements $AnalysisDataCopyWith<$Res> {
  _$AnalysisDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = null,
    Object? type = null,
    Object? id = null,
    Object? links = null,
    Object? isFile = null,
  }) {
    return _then(_value.copyWith(
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      isFile: null == isFile
          ? _value.isFile
          : isFile // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttributesCopyWith<$Res> get attributes {
    return $AttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res> get links {
    return $LinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnalysisDataImplCopyWith<$Res>
    implements $AnalysisDataCopyWith<$Res> {
  factory _$$AnalysisDataImplCopyWith(
          _$AnalysisDataImpl value, $Res Function(_$AnalysisDataImpl) then) =
      __$$AnalysisDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Attributes attributes,
      String type,
      String id,
      Links links,
      bool isFile});

  @override
  $AttributesCopyWith<$Res> get attributes;
  @override
  $LinksCopyWith<$Res> get links;
}

/// @nodoc
class __$$AnalysisDataImplCopyWithImpl<$Res>
    extends _$AnalysisDataCopyWithImpl<$Res, _$AnalysisDataImpl>
    implements _$$AnalysisDataImplCopyWith<$Res> {
  __$$AnalysisDataImplCopyWithImpl(
      _$AnalysisDataImpl _value, $Res Function(_$AnalysisDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = null,
    Object? type = null,
    Object? id = null,
    Object? links = null,
    Object? isFile = null,
  }) {
    return _then(_$AnalysisDataImpl(
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      isFile: null == isFile
          ? _value.isFile
          : isFile // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalysisDataImpl implements _AnalysisData {
  const _$AnalysisDataImpl(
      {required this.attributes,
      required this.type,
      required this.id,
      required this.links,
      this.isFile = false});

  factory _$AnalysisDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalysisDataImplFromJson(json);

  @override
  final Attributes attributes;
  @override
  final String type;
  @override
  final String id;
  @override
  final Links links;
  @override
  @JsonKey()
  final bool isFile;

  @override
  String toString() {
    return 'AnalysisData(attributes: $attributes, type: $type, id: $id, links: $links, isFile: $isFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysisDataImpl &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.isFile, isFile) || other.isFile == isFile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, attributes, type, id, links, isFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalysisDataImplCopyWith<_$AnalysisDataImpl> get copyWith =>
      __$$AnalysisDataImplCopyWithImpl<_$AnalysisDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalysisDataImplToJson(
      this,
    );
  }
}

abstract class _AnalysisData implements AnalysisData {
  const factory _AnalysisData(
      {required final Attributes attributes,
      required final String type,
      required final String id,
      required final Links links,
      final bool isFile}) = _$AnalysisDataImpl;

  factory _AnalysisData.fromJson(Map<String, dynamic> json) =
      _$AnalysisDataImpl.fromJson;

  @override
  Attributes get attributes;
  @override
  String get type;
  @override
  String get id;
  @override
  Links get links;
  @override
  bool get isFile;
  @override
  @JsonKey(ignore: true)
  _$$AnalysisDataImplCopyWith<_$AnalysisDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
