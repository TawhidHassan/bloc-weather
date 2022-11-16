import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:untitled1/Bloc/weather_cubit.dart';
import 'package:untitled1/Data/mainResponse.dart';

import '../../Repository/WeatherRepository/weatherRepository.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController locationNameTextController= TextEditingController();
  MainResponse? mainResponse;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather"),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
                controller: locationNameTextController,
                decoration: InputDecoration(
                    hintText: "Enter City Name"
                )
            ),
            TextButton(
              onPressed: (){
                BlocProvider.of<WeatherCubit>(context).getWeather(locationNameTextController.text);
              },
              child: Text(
                  "Nouvelle Texte"
              ),
            ),



            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(8),
              color: Colors.orangeAccent,
              child: BlocBuilder<WeatherCubit, WeatherState>(
                builder: (context, state) {
                  if(state is !WeatherGet){
                    return Center();
                  }
                  final data=(state as WeatherGet).data;
                  return
                    data!.message!=null?
                        Text(data.message!)
                        :
                    Column(
                    children: [
                      Text("Wind: "+data.wind!.speed!.toString() ),
                      Column(
                        children: data.weather!.map((e){
                          return Text("Weather: "+e.main!+" "+e.description!.toString());
                        }).toList(),
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
