// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'champion_stats_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChampionStats _$ChampionStatsFromJson(Map<String, dynamic> json) {
  return ChampionStats(
    hp: (json['hp'] as num)?.toDouble(),
    hpperlevel: (json['hpperlevel'] as num)?.toDouble(),
    mp: (json['mp'] as num)?.toDouble(),
    mpperlevel: (json['mpperlevel'] as num)?.toDouble(),
    movespeed: (json['movespeed'] as num)?.toDouble(),
    armor: (json['armor'] as num)?.toDouble(),
    armorperlevel: (json['armorperlevel'] as num)?.toDouble(),
    spellblock: (json['spellblock'] as num)?.toDouble(),
    spellblockperlevel: (json['spellblockperlevel'] as num)?.toDouble(),
    attackrange: (json['attackrange'] as num)?.toDouble(),
    hpregen: (json['hpregen'] as num)?.toDouble(),
    hpregenperlevel: (json['hpregenperlevel'] as num)?.toDouble(),
    mpregen: (json['mpregen'] as num)?.toDouble(),
    mpregenperlevel: (json['mpregenperlevel'] as num)?.toDouble(),
    crit: (json['crit'] as num)?.toDouble(),
    critperlevel: (json['critperlevel'] as num)?.toDouble(),
    attackdamage: (json['attackdamage'] as num)?.toDouble(),
    attackdamageperlevel: (json['attackdamageperlevel'] as num)?.toDouble(),
    attackspeedperlevel: (json['attackspeedperlevel'] as num)?.toDouble(),
    attackspeed: (json['attackspeed'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$ChampionStatsToJson(ChampionStats instance) =>
    <String, dynamic>{
      'hp': instance.hp,
      'hpperlevel': instance.hpperlevel,
      'mp': instance.mp,
      'mpperlevel': instance.mpperlevel,
      'movespeed': instance.movespeed,
      'armor': instance.armor,
      'armorperlevel': instance.armorperlevel,
      'spellblock': instance.spellblock,
      'spellblockperlevel': instance.spellblockperlevel,
      'attackrange': instance.attackrange,
      'hpregen': instance.hpregen,
      'hpregenperlevel': instance.hpregenperlevel,
      'mpregen': instance.mpregen,
      'mpregenperlevel': instance.mpregenperlevel,
      'crit': instance.crit,
      'critperlevel': instance.critperlevel,
      'attackdamage': instance.attackdamage,
      'attackdamageperlevel': instance.attackdamageperlevel,
      'attackspeedperlevel': instance.attackspeedperlevel,
      'attackspeed': instance.attackspeed,
    };
