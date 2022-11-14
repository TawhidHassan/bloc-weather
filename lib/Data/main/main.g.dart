// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Main _$MainFromJson(Map<String, dynamic> json) => Main(
      json['temp'] as num?,
      json['feels_like'] as num?,
      json['temp_min'] as num?,
      json['temp_max'] as num?,
      json['pressure'] as num?,
      json['humidity'] as num?,
    );

Map<String, dynamic> _$MainToJson(Main instance) => <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feels_like,
      'temp_min': instance.temp_min,
      'temp_max': instance.temp_max,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };
