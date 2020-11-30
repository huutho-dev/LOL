// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'champion_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChampionsEntity _$ChampionsEntityFromJson(Map<String, dynamic> json) {
  return ChampionsEntity(
    version: json['version'] as String,
    id: json['id'] as String,
    key: json['key'] as String,
    name: json['name'] as String,
    title: json['title'] as String,
    blurb: json['blurb'] as String,
    info: json['info'] == null
        ? null
        : ChampionInfo.fromJson(json['info'] as Map<String, dynamic>),
    image: json['image'] == null
        ? null
        : ChampionImage.fromJson(json['image'] as Map<String, dynamic>),
    tags: (json['tags'] as List)?.map((e) => e as String)?.toList(),
    partype: json['partype'] as String,
    stats: json['stats'] == null
        ? null
        : ChampionStats.fromJson(json['stats'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ChampionsEntityToJson(ChampionsEntity instance) =>
    <String, dynamic>{
      'version': instance.version,
      'id': instance.id,
      'key': instance.key,
      'name': instance.name,
      'title': instance.title,
      'blurb': instance.blurb,
      'info': instance.info,
      'image': instance.image,
      'tags': instance.tags,
      'partype': instance.partype,
      'stats': instance.stats,
    };
