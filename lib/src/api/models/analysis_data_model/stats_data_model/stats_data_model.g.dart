// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatsImpl _$$StatsImplFromJson(Map<String, dynamic> json) => _$StatsImpl(
      harmless: json['harmless'] as int,
      typeUnsupported: json['type-unsupported'] as int?,
      suspicious: json['suspicious'] as int,
      confirmedTimeout: json['confirmed-timeout'] as int?,
      timeout: json['timeout'] as int,
      failure: json['failure'] as int?,
      malicious: json['malicious'] as int,
      undetected: json['undetected'] as int,
    );

Map<String, dynamic> _$$StatsImplToJson(_$StatsImpl instance) =>
    <String, dynamic>{
      'harmless': instance.harmless,
      'type-unsupported': instance.typeUnsupported,
      'suspicious': instance.suspicious,
      'confirmed-timeout': instance.confirmedTimeout,
      'timeout': instance.timeout,
      'failure': instance.failure,
      'malicious': instance.malicious,
      'undetected': instance.undetected,
    };
