import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';


class WeatherNetwork{
  Future callWeather()async {
    try{
      var response=await http.get(
        Uri.parse("http://api.openweathermap.org/data/2.5/weather?appid=8598c1b0b4e91b68974101d97a10552b&q=Hyderabad"),
        headers: {
          "Accept": "application/json"
        },
      );
      Logger().w(response.body);
      return jsonDecode(response.body);
    }catch(e){
      print(e);
      return null;
    }
  }

}