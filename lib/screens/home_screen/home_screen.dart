import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app_6/components/custom_app_bar.dart';
import 'package:weather_app_6/constants.dart';
import 'package:weather_app_6/screens/home_screen/components/hourly_weather_bar.dart';
import 'package:weather_app_6/screens/home_screen/components/weather_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      Text(
                        'Bandung,',

                        // TODO (1): style = Raleway, bold, 25.0, 0xFF333333

                        // style: GoogleFonts.raleway(
                        //   fontWeight: FontWeight.bold,
                        //   fontSize: 25.0,
                        //   color: Color(0xFF333333),
                        // ),
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        'Indonesia',

                        // TODO (2): style = Raleway, w300, 21.0, 0xFF676767

                        // style: GoogleFonts.raleway(
                        //   fontWeight: FontWeight.w300,
                        //   fontSize: 21.0,
                        //   color: Color(0xFF676767),
                        // ),

                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  WeatherCard(),
                  const SizedBox(height: 30.0),
                ],
              ),
            ),
            HourlyWeatherBar(
                padding: const EdgeInsets.symmetric(horizontal: 12.0)),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
