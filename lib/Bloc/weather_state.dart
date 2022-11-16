part of 'weather_cubit.dart';

@immutable
abstract class WeatherState {}

class WeatherInitial extends WeatherState {}
class WeatherError extends WeatherState {
 final String? msg;

 WeatherError({this.msg});
}
class WeatherGet extends WeatherState {
 final MainResponse? data;


 WeatherGet({this.data});
}
