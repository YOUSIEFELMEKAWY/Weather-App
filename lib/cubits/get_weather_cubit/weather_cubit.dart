import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/weather_states.dart';
import '../../models/weather_model.dart';
import '../../services/weather_service.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(NoWeatherState());

  WeatherModel? weatherModel;
  getWeather({required String cityName}) async
  {
    try {
      weatherModel = await WeatherService().getCurrentWeather(cityName: cityName);
      emit(WeatherLoadedState(weatherModel!));
    } on Exception catch (e) {
      emit(WeatherFailureState());
    }
  }
}
