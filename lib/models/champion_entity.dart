import 'package:json_annotation/json_annotation.dart';

import 'champion_image_entity.dart';
import 'champion_info_entity.dart';
import 'champion_stats_entity.dart';

part 'champion_entity.g.dart';

@JsonSerializable(nullable: true)
class ChampionsEntity {
  @JsonKey(name: "version")
  String version;

  @JsonKey(name: "id")
  String id;

  @JsonKey(name: "key")
  String key;

  @JsonKey(name: "name")
  String name;

  @JsonKey(name: "title")
  String title;

  @JsonKey(name: "blurb")
  String blurb;

  @JsonKey(name: "info")
  ChampionInfo info;

  @JsonKey(name: "image")
  ChampionImage image;

  @JsonKey(name: "tags")
  List<String> tags;

  @JsonKey(name: "partype")
  String partype;

  @JsonKey(name: "stats")
  ChampionStats stats;

  ChampionsEntity(
      {this.version,
      this.id,
      this.key,
      this.name,
      this.title,
      this.blurb,
      this.info,
      this.image,
      this.tags,
      this.partype,
      this.stats});

  factory ChampionsEntity.fromJson(Map<String, dynamic> json) =>
      _$ChampionsEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ChampionsEntityToJson(this);
}
