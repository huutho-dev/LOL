// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'champions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChampionsResponse _$ChampionsResponseFromJson(Map<String, dynamic> json) {
  return ChampionsResponse(
    json['type'] as String,
    json['format'] as String,
    json['version'] as String,
    json['data'] == null
        ? null
        : ChampionsData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ChampionsResponseToJson(ChampionsResponse instance) =>
    <String, dynamic>{
      'type': instance.type,
      'format': instance.format,
      'version': instance.version,
      'data': instance.data,
    };
