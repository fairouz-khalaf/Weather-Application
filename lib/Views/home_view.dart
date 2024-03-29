import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weather_app/Views/weather_Info.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';

import 'noweather_view.dart';

// ignore: camel_case_types
class Home_view extends StatefulWidget {
  const Home_view({super.key});

  @override
  State<Home_view> createState() => _Home_viewState();
}

// ignore: camel_case_types
class _Home_viewState extends State<Home_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          centerTitle: true,
          title: const Text(
            "Weather APP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: BlocBuilder<GetWeatherCubit, WeatherState>(
            builder: (context, state) {
          if (state is InitialWeatherState) {
            return const NoWeather_View();
          } else if (state is WeatherLoadedState) {
            return const WeatherInfoBody();
          } else {
            return const Text("opps there was an Error");
          }
        }));
  }
}
