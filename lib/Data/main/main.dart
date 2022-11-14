import 'package:json_annotation/json_annotation.dart';

part 'main.g.dart';

@JsonSerializable()
class Main{

  num? temp;
  num? feels_like;
  num? temp_min;
  num? temp_max;
  num? pressure;
  num? humidity;


  Main(this.temp, this.feels_like, this.temp_min, this.temp_max, this.pressure,
      this.humidity);

  factory Main.fromJson(Map<String,dynamic>json)=>
      _$MainFromJson(json);
  Map<String,dynamic>toJson()=>_$MainToJson(this);
}