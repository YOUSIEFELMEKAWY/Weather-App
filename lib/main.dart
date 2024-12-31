import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/weather_states.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherCubit(),
      child: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primaryColor: getMaterialColor(
                BlocProvider.of<WeatherCubit>(context)
                    .weatherModel
                    ?.weatherCondition
            ),
          ),
          home: const HomeView(),
        ),
      ),
    );
  }
}

MaterialColor getMaterialColor(String? dayDescription) {
  switch (dayDescription) {
    case "Sunny":
      return Colors.yellow;
    case "Partly cloudy":
      return Colors.lightBlue;
    case "Cloudy":
      return Colors.grey;
    case "Overcast":
      return Colors.blueGrey;
    case "Mist":
      return Colors.blueGrey;
    case "Patchy rain possible":
      return Colors.blue;
    case "Patchy snow possible":
      return Colors.blueGrey;
    case "Patchy sleet possible":
      return Colors.lightBlue;
    case "Patchy freezing drizzle possible":
      return Colors.lightBlue;
    case "Thundery outbreaks possible":
      return Colors.deepPurple;
    case "Blowing snow":
      return Colors.blueGrey;
    case "Blizzard":
      return Colors.blueGrey;
    case "Fog":
      return Colors.blueGrey;
    case "Freezing fog":
      return Colors.blueGrey;
    case "Patchy light drizzle":
      return Colors.blue;
    case "Light drizzle":
      return Colors.blue;
    case "Freezing drizzle":
      return Colors.lightBlue;
    case "Heavy freezing drizzle":
      return Colors.lightBlue;
    case "Patchy light rain":
      return Colors.blue;
    case "Light rain":
      return Colors.blue;
    case "Moderate rain at times":
      return Colors.blue;
    case "Moderate rain":
      return Colors.blue;
    case "Heavy rain at times":
      return Colors.indigo;
    case "Heavy rain":
      return Colors.indigo;
    case "Light freezing rain":
      return Colors.lightBlue;
    case "Moderate or heavy freezing rain":
      return Colors.lightBlue;
    case "Light sleet":
      return Colors.lightBlue;
    case "Moderate or heavy sleet":
      return Colors.blueGrey;
    case "Patchy light snow":
      return Colors.grey;
    case "Light snow":
      return Colors.grey;
    case "Patchy moderate snow":
      return Colors.grey;
    case "Moderate snow":
      return Colors.grey;
    case "Patchy heavy snow":
      return Colors.blueGrey;
    case "Heavy snow":
      return Colors.blueGrey;
    case "Ice pellets":
      return Colors.lightBlue;
    case "Light rain shower":
      return Colors.blue;
    case "Moderate or heavy rain shower":
      return Colors.indigo;
    case "Torrential rain shower":
      return Colors.indigo;
    case "Light sleet showers":
      return Colors.lightBlue;
    case "Moderate or heavy sleet showers":
      return Colors.blueGrey;
    case "Light snow showers":
      return Colors.grey;
    case "Moderate or heavy snow showers":
      return Colors.blueGrey;
    case "Light showers of ice pellets":
      return Colors.lightBlue;
    case "Moderate or heavy showers of ice pellets":
      return Colors.blueGrey;
    case "Patchy light rain with thunder":
      return Colors.deepPurple;
    case "Moderate or heavy rain with thunder":
      return Colors.deepPurple;
    case "Patchy light snow with thunder":
      return Colors.deepPurple;
    case "Moderate or heavy snow with thunder":
      return Colors.deepPurple;
    default:
      return Colors.blue; // Default for unknown statuses
  }
}
