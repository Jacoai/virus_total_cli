import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:virus_total_cli/src/api/models/analysis_data_model/result_data_model/result_data_model.dart';
import 'package:virus_total_cli/src/api/models/analysis_data_model/stats_data_model/stats_data_model.dart';

part 'attributes_data_model.freezed.dart';
part 'attributes_data_model.g.dart';

@freezed
class Attributes with _$Attributes {
  const factory Attributes({
    required int date,
    required String status,
    required Stats stats,
    required Map<String, Result> results,
  }) = _Attributes;

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
}
