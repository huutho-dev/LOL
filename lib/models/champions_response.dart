import 'package:json_annotation/json_annotation.dart';

import 'champions_data_entity.dart';

part 'champions_response.g.dart';

@JsonSerializable(nullable: true)
class ChampionsResponse {
  @JsonKey(name: "type")
  String type;

  @JsonKey(name: "format")
  String format;

  @JsonKey(name: "version")
  String version;

  @JsonKey(name: "data")
  ChampionsData data;

  ChampionsResponse(this.type, this.format, this.version, this.data);

  factory ChampionsResponse.fromJson(Map<String, dynamic> json) =>
      _$ChampionsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ChampionsResponseToJson(this);
}
