import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled1/Data/mainResponse.dart';
import 'package:untitled1/Data/sky/sky.dart';
import 'package:untitled1/Repository/WeatherRepository/weatherRepository.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherRepository weatherRepository=WeatherRepository();
  WeatherCubit() : super(WeatherInitial());

  void getWeather(String text) {
    weatherRepository.callWeather(text).then((value) {
      if(value!=null){
          emit(WeatherGet(data: value));
      }

    });
  }
}
