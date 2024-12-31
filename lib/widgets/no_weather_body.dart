import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'there is no weather 😔 start',
              style: TextStyle(
                fontSize: screenWidth * 0.07,
              ),
            ),
            Text(
              'searching now 🔍',
              style: TextStyle(
                fontSize: screenWidth * 0.07,
              ),
            )
          ],
        ),
      ),
    );
  }
}
