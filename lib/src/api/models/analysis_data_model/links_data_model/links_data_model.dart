import 'package:freezed_annotation/freezed_annotation.dart';

part 'links_data_model.freezed.dart';
part 'links_data_model.g.dart';

@freezed
class Links with _$Links {
  const factory Links({
    required String item,
    required String self,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}
