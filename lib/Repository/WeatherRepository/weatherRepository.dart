

import 'package:untitled1/Data/mainResponse.dart';

import '../../Network/WeatherNetworkService/weatherNetwork.dart';

class WeatherRepository{
  WeatherNetwork weatherNetwork=WeatherNetwork();

  Future<MainResponse> callWeather(String? text) async{
  final raw= await weatherNetwork.callWeather(text);

    return MainResponse.fromJson(raw);
  }
}