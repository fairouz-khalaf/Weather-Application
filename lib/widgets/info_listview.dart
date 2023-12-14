import 'package:flutter/material.dart';
import 'package:weather_app/models/info_model.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/info_card_weather.dart';

class InfoModelListView extends StatelessWidget {
  InfoModelListView({
    super.key,
    required this.weatherModel,
  });
  final WeatherModel weatherModel;
  final List<InfoModel> models = const [
    InfoModel(
        image: "assets/humidity.png", name: "Humidity", value: "humidity"),
    InfoModel(image: "assets/dewpoint.png", name: "Dew point", value: ""),
    InfoModel(image: "assets/sunrise.png", name: "Sunrise", value: "sunrise"),
    InfoModel(image: "assets/sunset.png", name: "Sunset", value: "sunset"),
    InfoModel(
        image: "assets/moonrise.png", name: "Moonrise", value: "moonrise"),
    InfoModel(image: "assets/moonset.png", name: "Moonset", value: "moonset"),
    InfoModel(
        image: "assets/moonphase.png", name: "Moon phase", value: "moon_phase"),
    InfoModel(image: "assets/wind.png", name: "Wind", value: "wind_kph"),
    InfoModel(
        image: "assets/inddirection.png",
        name: "Wind Direction",
        value: "wind_dir"),
    InfoModel(
        image: "assets/pressure.png", name: "Pressure", value: "pressure_mb"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: models.length,
          itemBuilder: (context, i) {
            return InfoCard(model: models[i]);
          }),
    );
  }
}
