import 'package:json_annotation/json_annotation.dart';
import 'package:untitled1/Data/coord/coord.dart';
import 'package:untitled1/Data/main/main.dart';
import 'package:untitled1/Data/sky/sky.dart';
import 'package:untitled1/Data/weather/weather.dart';
import 'package:untitled1/Data/wind/wind.dart';

part 'mainResponse.g.dart';

@JsonSerializable()
class MainResponse{

  Coord?coord;
  List<Weather>?weather;
  String? base;
  Main? main;
  num? visibility;
  Wind? wind;
  num? dt;
  Sky? sky;
  num?timezone;
  num?id;
  String?name;
  num?cod;


  MainResponse(
      this.coord,
      this.weather,
      this.base,
      this.main,
      this.visibility,
      this.wind,
      this.dt,
      this.sky,
      this.timezone,
      this.id,
      this.name,
      this.cod);

  factory MainResponse.fromJson(Map<String,dynamic>json)=>
      _$MainResponseFromJson(json);
  Map<String,dynamic>toJson()=>_$MainResponseToJson(this);
}