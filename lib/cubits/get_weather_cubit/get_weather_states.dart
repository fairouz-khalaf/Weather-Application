import 'package:weather_app/models/weather_model.dart';

class WeatherState {}

class InitialWeatherState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  late final WeatherModel weatherModel;

  WeatherLoadedState(this.weatherModel);
}

class WeatherFailureState extends WeatherState {
  final String errorMessage;

  WeatherFailureState(this.errorMessage);
}
