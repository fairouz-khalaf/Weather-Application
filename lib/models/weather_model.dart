// ignore_for_file: public_member_api_docs, sort_constructors_first
class WeatherModel {
  final String cityName;

  final String country;
  final DateTime date;
  final String? image;
  // ignore: non_constant_identifier_names
  final double temp_c;
  // ignore: non_constant_identifier_names
  final double temp_f;
  final double maxtemp;
  final double mintemp;
  final double temp;
  final String status;
  // final double? wind;

  // final String wind_direction;
  // final double humidity;
  // final double dewpoint_c;
  // final DateTime sunrise;
  // final DateTime sunset;
  // final DateTime moonrise;
  // final DateTime moonset;
  // final double pressure_mb;
  // // ignore: non_constant_identifier_names
  // final String moon_phase;

  WeatherModel({
    // ignore: non_constant_identifier_names
    // ignore: non_constant_identifier_names
    // // ignore: non_constant_identifier_names
    required this.cityName,
    required this.country,
    required this.date,
    this.image,
    required this.temp_c,
    required this.temp_f,
    required this.maxtemp,
    required this.mintemp,
    required this.temp,
    required this.status,
  });

  factory WeatherModel.fromJson(dynamic json) {
    return WeatherModel(
      cityName: json['location']['name'],
      country: json['location']['country'],
      date: DateTime.parse(json['current']['last_updated']),
      image: json['current']['condition']['icon'],
      temp_c: json['current']['temp_c'],
      temp_f: json['current']['temp_f'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],

      maxtemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      mintemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      status: json['current']['condition']['text'],
      // wind: json['current']['condition']['wind_kph'],
      // wind_direction: json['current']['condition']['wind_dir'],
      // humidity: json['current']['condition']['humidity'],
      // sunrise: DateTime.parse(
      //     json['forecast']['forecastday'][0]['astro']['sunrise']),
      // sunset:
      //     DateTime.parse(json['forecast']['forecastday'][0]['astro']['sunset']),
      // moonrise: DateTime.parse(
      //     json['forecast']['forecastday'][0]['astro']['moonrise']),
      // moonset: DateTime.parse(
      //     json['forecast']['forecastday'][0]['astro']['moonset']),
      // moon_phase: json['forecast']['forecastday'][0]['astro']['moon_phase'],
      // dewpoint_c: json['forecast']['forecastday'][0]['hour'][15]["condition"]
      //     ["dewpoint_c"],
      // pressure_mb: json['forecast']['forecastday'][0]['hour'][15]["condition"]
      //     ["pressure_mb"],
    );
  }
}
