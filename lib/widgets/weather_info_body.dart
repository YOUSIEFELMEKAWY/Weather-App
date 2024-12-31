import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration:  BoxDecoration(
          gradient: LinearGradient(
              colors: [Theme.of(context).primaryColor, Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weatherModel.cityName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.075,
              ),
            ),
            Text(
              'Updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',
              style: TextStyle(
                fontSize: screenWidth * 0.055,
              ),
            ),
             SizedBox(
              height: screenWidth * 0.07,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  'https:${weatherModel.image}',
                ),
                Text(
                  weatherModel.temp.round().toString(),
                  style:  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth * 0.07,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Max temp: ${weatherModel.maxTemp.round()}',
                      style:  TextStyle(
                        fontSize: screenWidth * 0.033,
                      ),
                    ),
                    Text(
                      'Min temp: ${weatherModel.minTemp.round()}',
                      style:  TextStyle(
                        fontSize: screenWidth * 0.033,
                      ),
                    ),
                  ],
                ),
              ],
            ),
             SizedBox(
              height: screenWidth * 0.07,
            ),
            Text(
              weatherModel.weatherCondition,
              style:  TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.08,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
