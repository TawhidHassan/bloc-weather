// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sky.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sky _$SkyFromJson(Map<String, dynamic> json) => Sky(
      json['type'] as num?,
      json['id'] as num?,
      json['country'] as String?,
      json['sunrise'] as num?,
    );

Map<String, dynamic> _$SkyToJson(Sky instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'country': instance.country,
      'sunrise': instance.sunrise,
    };
