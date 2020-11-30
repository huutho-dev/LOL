import 'package:json_annotation/json_annotation.dart';

part 'champion_stats_entity.g.dart';

@JsonSerializable(nullable: true)
class ChampionStats {
  @JsonKey(name: "hp")
  double hp;

  @JsonKey(name: "hpperlevel")
  double hpperlevel;

  @JsonKey(name: "mp")
  double mp;

  @JsonKey(name: "mpperlevel")
  double mpperlevel;

  @JsonKey(name: "movespeed")
  double movespeed;

  @JsonKey(name: "armor")
  double armor;

  @JsonKey(name: "armorperlevel")
  double armorperlevel;

  @JsonKey(name: "spellblock")
  double spellblock;

  @JsonKey(name: "spellblockperlevel")
  double spellblockperlevel;

  @JsonKey(name: "attackrange")
  double attackrange;

  @JsonKey(name: "hpregen")
  double hpregen;

  @JsonKey(name: "hpregenperlevel")
  double hpregenperlevel;

  @JsonKey(name: "mpregen")
  double mpregen;

  @JsonKey(name: "mpregenperlevel")
  double mpregenperlevel;

  @JsonKey(name: "crit")
  double crit;

  @JsonKey(name: "critperlevel")
  double critperlevel;

  @JsonKey(name: "attackdamage")
  double attackdamage;

  @JsonKey(name: "attackdamageperlevel")
  double attackdamageperlevel;

  @JsonKey(name: "attackspeedperlevel")
  double attackspeedperlevel;

  @JsonKey(name: "attackspeed")
  double attackspeed;

  ChampionStats(
      {this.hp,
      this.hpperlevel,
      this.mp,
      this.mpperlevel,
      this.movespeed,
      this.armor,
      this.armorperlevel,
      this.spellblock,
      this.spellblockperlevel,
      this.attackrange,
      this.hpregen,
      this.hpregenperlevel,
      this.mpregen,
      this.mpregenperlevel,
      this.crit,
      this.critperlevel,
      this.attackdamage,
      this.attackdamageperlevel,
      this.attackspeedperlevel,
      this.attackspeed});

  factory ChampionStats.fromJson(Map<String, dynamic> json) =>
      _$ChampionStatsFromJson(json);

  Map<String, dynamic> toJson() => _$ChampionStatsToJson(this);
}
