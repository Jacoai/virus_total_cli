import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:virus_total_cli/src/api/models/analysis_data_model/attributes_data_model/attributes_data_model.dart';
import 'package:virus_total_cli/src/api/models/analysis_data_model/links_data_model/links_data_model.dart';

part 'analysis_data_model.freezed.dart';
part 'analysis_data_model.g.dart';

@freezed
class AnalysisData with _$AnalysisData {
  const factory AnalysisData({
    required Attributes attributes,
    required String type,
    required String id,
    required Links links,
  }) = _AnalysisData;

  factory AnalysisData.fromJson(Map<String, dynamic> json) =>
      _$AnalysisDataFromJson(json);
}
