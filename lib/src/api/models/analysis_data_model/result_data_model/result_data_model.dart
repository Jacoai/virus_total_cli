import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_data_model.freezed.dart';
part 'result_data_model.g.dart';

@freezed
class Result with _$Result {
  const factory Result({
    required String category,
    @JsonKey(name: "engine_name") required String engineName,
    required dynamic result,
    required String method,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
