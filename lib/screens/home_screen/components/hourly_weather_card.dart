import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app_6/constants.dart';
import 'package:weather_app_6/screens/home_screen/models/weather.dart';

class HourlyWeatherCard extends StatelessWidget {
  final Weather weather;

  HourlyWeatherCard({this.weather});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 100.0,
      decoration: BoxDecoration(

        // TODO (1): color = 0xFF427BFF
        // TODO (2): border = Border.all(0xFFECECEC)
        // TODO (3): borderRadius = circular(kDefaultBorderRadius)

        // color: Color(0xFF427BFF),
        // border: Border.all(
        //   color: Color(0xFFECECEC),
        // ),
        // borderRadius: BorderRadius.circular(kDefaultBorderRadius),

      ),
      child: null,

      // TODO (4): child = Column(mainAxisAlignment = center)

      // Column's children
      // TODO (5): 1. Text(weather.text, nunito(16.0, white, w500))
      // TODO (6): 2. Image(weather.image)
      // TODO (7): 3. Text(weather.temp, nunito(18.0, white, bold))

      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Text(
      //       weather.time,
      //       style: GoogleFonts.nunito(
      //         fontSize: 16.0,
      //         color: Colors.white,
      //         fontWeight: FontWeight.w500,
      //       ),
      //     ),
      //     Image(
      //       image: AssetImage(weather.image),
      //     ),
      //     Text(
      //       weather.temp,
      //       style: GoogleFonts.nunito(
      //         fontSize: 18.0,
      //         color: Colors.white,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     )
      //   ],
      // ),

    );
  }
}
