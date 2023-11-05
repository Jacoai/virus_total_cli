// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attributes_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttributesImpl _$$AttributesImplFromJson(Map<String, dynamic> json) =>
    _$AttributesImpl(
      date: json['date'] as int,
      status: json['status'] as String,
      stats: Stats.fromJson(json['stats'] as Map<String, dynamic>),
      results: (json['results'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Result.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$AttributesImplToJson(_$AttributesImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'status': instance.status,
      'stats': instance.stats,
      'results': instance.results,
    };
