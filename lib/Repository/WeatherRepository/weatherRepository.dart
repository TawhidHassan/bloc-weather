

import 'package:untitled1/Data/mainResponse.dart';

import '../../Network/WeatherNetworkService/weatherNetwork.dart';

class WeatherRepository{
  WeatherNetwork weatherNetwork=WeatherNetwork();

  Future<MainResponse> callWeather() async{
  final raw= await weatherNetwork.callWeather();

    return MainResponse.fromJson(raw);
  }
}