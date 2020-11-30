// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'champion_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChampionInfo _$ChampionInfoFromJson(Map<String, dynamic> json) {
  return ChampionInfo(
    attack: json['attack'] as int,
    defense: json['defense'] as int,
    magic: json['magic'] as int,
    difficulty: json['difficulty'] as int,
  );
}

Map<String, dynamic> _$ChampionInfoToJson(ChampionInfo instance) =>
    <String, dynamic>{
      'attack': instance.attack,
      'defense': instance.defense,
      'magic': instance.magic,
      'difficulty': instance.difficulty,
    };
