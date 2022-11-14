// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mainResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainResponse _$MainResponseFromJson(Map<String, dynamic> json) => MainResponse(
      json['coord'] == null
          ? null
          : Coord.fromJson(json['coord'] as Map<String, dynamic>),
      (json['weather'] as List<dynamic>?)
          ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['base'] as String?,
      json['main'] == null
          ? null
          : Main.fromJson(json['main'] as Map<String, dynamic>),
      json['visibility'] as num?,
      json['wind'] == null
          ? null
          : Wind.fromJson(json['wind'] as Map<String, dynamic>),
      json['dt'] as num?,
      json['sky'] == null
          ? null
          : Sky.fromJson(json['sky'] as Map<String, dynamic>),
      json['timezone'] as num?,
      json['id'] as num?,
      json['name'] as String?,
      json['cod'] as num?,
    );

Map<String, dynamic> _$MainResponseToJson(MainResponse instance) =>
    <String, dynamic>{
      'coord': instance.coord,
      'weather': instance.weather,
      'base': instance.base,
      'main': instance.main,
      'visibility': instance.visibility,
      'wind': instance.wind,
      'dt': instance.dt,
      'sky': instance.sky,
      'timezone': instance.timezone,
      'id': instance.id,
      'name': instance.name,
      'cod': instance.cod,
    };
