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
          color: Color(0xFF427BFF),
          border: Border.all(
            color: Color(0xFFECECEC),
          ),
          borderRadius: BorderRadius.circular(kDefaultBorderRadius)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weather.time,
            style: GoogleFonts.nunito(
              fontSize: 16.0,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          Image(
            image: AssetImage(weather.image),
          ),
          Text(
            weather.temp,
            style: GoogleFonts.nunito(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
