import 'package:json_annotation/json_annotation.dart';

part 'champion_info_entity.g.dart';

@JsonSerializable(nullable: true)
class ChampionInfo {
  @JsonKey(name: "attack")
  int attack;

  @JsonKey(name: "defense")
  int defense;

  @JsonKey(name: "magic")
  int magic;

  @JsonKey(name: "difficulty")
  int difficulty;

  ChampionInfo({this.attack, this.defense, this.magic, this.difficulty});

  factory ChampionInfo.fromJson(Map<String, dynamic> json) =>
      _$ChampionInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ChampionInfoToJson(this);
}
