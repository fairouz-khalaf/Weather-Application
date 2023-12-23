import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/widgets/custom_card.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel =
        BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.country,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 40,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            weatherModel.cityName,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 32,
            ),
          ),
          Center(
            child: Text(DateFormat('EEEE, MMMM d').format(weatherModel.date),
                style: const TextStyle(fontSize: 20, color: Colors.lightGreen)),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Updated at :${weatherModel.date.hour}:${weatherModel.date.minute}:${weatherModel.date.second}',
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                "https:${weatherModel.image != null ? weatherModel.image! : " "}",
                width: 100,
                height: 120,
                fit: BoxFit.cover,
                // weatherModel.image??" "
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                '${weatherModel.temp.toString()}°C',
                style:
                    const TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Text(
                    'MaxTemp:${weatherModel.maxtemp.round()}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'MinTemp:${weatherModel.mintemp.round()}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          CustomCard(text: weatherModel.status)
        ],
      ),
    );
  }
}
