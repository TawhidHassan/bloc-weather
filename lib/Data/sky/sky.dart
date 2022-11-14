import 'package:json_annotation/json_annotation.dart';

part 'sky.g.dart';

@JsonSerializable()
class Sky{

  num? type;
  num? id;
  String? country;
  num? sunrise;


  Sky(this.type, this.id, this.country, this.sunrise);

  factory Sky.fromJson(Map<String,dynamic>json)=>
      _$SkyFromJson(json);
  Map<String,dynamic>toJson()=>_$SkyToJson(this);
}