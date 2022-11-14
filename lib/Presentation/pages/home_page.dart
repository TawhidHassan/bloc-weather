import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:untitled1/Data/mainResponse.dart';

import '../../Repository/WeatherRepository/weatherRepository.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  MainResponse? mainResponse;
  @override
  void initState() {
    // TODO: implement initState

    WeatherRepository().callWeather().then((value) {
      mainResponse=value;

      Logger().i(mainResponse!.wind!.speed!.toDouble());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
    );
  }
}
