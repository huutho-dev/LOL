// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'champion_image_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChampionImage _$ChampionImageFromJson(Map<String, dynamic> json) {
  return ChampionImage(
    full: json['full'] as String,
    sprite: json['sprite'] as String,
    group: json['group'] as String,
    x: json['x'] as int,
    y: json['y'] as int,
    w: json['w'] as int,
    h: json['h'] as int,
  );
}

Map<String, dynamic> _$ChampionImageToJson(ChampionImage instance) =>
    <String, dynamic>{
      'full': instance.full,
      'sprite': instance.sprite,
      'group': instance.group,
      'x': instance.x,
      'y': instance.y,
      'w': instance.w,
      'h': instance.h,
    };
