import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:weather_app/widgets/info_listview.dart';

class InfoListViewBuilder extends StatefulWidget {
  final String cityname;
  const InfoListViewBuilder({super.key, required this.cityname});

  @override
  State<InfoListViewBuilder> createState() => _InfoListViewBuilderState();
}

class _InfoListViewBuilderState extends State<InfoListViewBuilder> {
  // ignore: prefer_typing_uninitialized_variables
  var future;
  @override
  void initState() {
    future = WeatherService(Dio()).getCurrentWeather(cityName: widget.cityname);
    super.initState();
  }

  Widget build(BuildContext context) {
    return FutureBuilder<WeatherModel>(
        future: future,
        builder: (context, Snapshot) {
          if (Snapshot.hasData) {
            return InfoModelListView(weatherModel: Snapshot.data!);
          } else if (Snapshot.hasError) {
            return const Center(
              child: Text("Oops There is Error ,Try Again"),
            );
          } else {
            return const Center(
                child: Padding(
              padding: EdgeInsets.symmetric(vertical: 200),
              child: CircularProgressIndicator(),
            ));
          }
        });
  }
}
