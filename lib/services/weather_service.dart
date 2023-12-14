import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = "http://api.weatherapi.com/v1";
  final String Apikey = "760c42cb3ce945dab94135247230411";
  WeatherService(this.dio);

  Future<WeatherModel?> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get("$baseUrl/forecast.json?key=$Apikey&q=$cityName&days=1");
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'Opps There is Error,Try Again';
      throw Exception(errorMessage);
    } on Exception catch (e) {
      log(e.toString());
      throw Exception('Opps There is Error,Try Again');
    }
  }
}
