import 'package:json_annotation/json_annotation.dart';

part 'coord.g.dart';

@JsonSerializable()
class Coord{
  @JsonKey(name: "lon")
  num? latitude;
  @JsonKey(name: "lat")
  num? longitude;

  Coord(this.latitude, this.longitude);

  factory Coord.fromJson(Map<String,dynamic>json)=>
      _$CoordFromJson(json);
  Map<String,dynamic>toJson()=>_$CoordToJson(this);
}