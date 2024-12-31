import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final dio = Dio();
  String baseUrl = 'https://api.weatherapi.com/v1';
  String apiKey = '7dce73305660464ab9d143243231402';

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
          '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1&aqi=no&alerts=no');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'There was an error, Try again later.';
      throw (Exception(errorMessage));
    }catch(e)
    {
      log(e.toString());
      throw(Exception('There was an error, Try again later.'));
    }
  }
}
