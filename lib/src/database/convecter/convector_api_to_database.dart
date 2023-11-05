import 'package:virus_total_cli/src/api/models/analysis_data_model/analysis_data_model.dart';
import 'package:virus_total_cli/src/database/model/database_data_model.dart';

VirusTotalData convertAnalysisDataToVirusTotalData(
    AnalysisData data, String source) {
  return VirusTotalData(
    harmless: data.attributes.stats.harmless,
    malicious: data.attributes.stats.malicious,
    suspicious: data.attributes.stats.suspicious,
    timeout: data.attributes.stats.timeout,
    undetected: data.attributes.stats.undetected,
    time: data.attributes.date,
    source: source,
  );
}
