import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_weather_app/bloc/cubit.dart';
import 'package:simple_weather_app/bloc/states.dart';
class SecondScreen extends StatelessWidget {
  late String title;
  SecondScreen({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherCubit,WeatherStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = WeatherCubit.get(context);
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
            Image.asset("assets/images/1.webp",),
              Text(cubit.weatherData!.title.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(cubit.weatherData!.woeid.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(cubit.weatherData!.lattLong!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      },

    );
  }
}
