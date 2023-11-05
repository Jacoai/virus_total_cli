// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      category: json['category'] as String,
      engineName: json['engine_name'] as String,
      result: json['result'],
      method: json['method'] as String,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'engine_name': instance.engineName,
      'result': instance.result,
      'method': instance.method,
    };
