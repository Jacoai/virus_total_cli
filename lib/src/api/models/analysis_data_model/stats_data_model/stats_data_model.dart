import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats_data_model.freezed.dart';
part 'stats_data_model.g.dart';

@freezed
class Stats with _$Stats {
  const factory Stats({
    required int harmless,
    @JsonKey(name: "type-unsupported") int? typeUnsupported,
    required int suspicious,
    @JsonKey(name: "confirmed-timeout") int? confirmedTimeout,
    required int timeout,
    int? failure,
    required int malicious,
    required int undetected,
  }) = _Stats;

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);
}
