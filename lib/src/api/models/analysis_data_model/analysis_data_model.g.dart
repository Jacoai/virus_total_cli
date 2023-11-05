// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnalysisDataImpl _$$AnalysisDataImplFromJson(Map<String, dynamic> json) =>
    _$AnalysisDataImpl(
      attributes:
          Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
      type: json['type'] as String,
      id: json['id'] as String,
      links: Links.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnalysisDataImplToJson(_$AnalysisDataImpl instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
      'type': instance.type,
      'id': instance.id,
      'links': instance.links,
    };
