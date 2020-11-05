import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app_6/screens/home_screen/components/hourly_weather_card.dart';
import 'package:weather_app_6/screens/home_screen/models/weather.dart';

class HourlyWeatherBar extends StatelessWidget {
  final List<Weather> _hourlyWeather = [
    Weather(time: '12:00', temp: 'Now', image: 'assets/images/cloudy.png'),
    Weather(time: '14:00', temp: '22°', image: 'assets/images/rainy.png'),
    Weather(
        time: '16:00', temp: '26°', image: 'assets/images/cloudy_with_sun.png'),
    Weather(
        time: '18:00', temp: '25°', image: 'assets/images/cloudy_with_sun.png'),
    Weather(time: '20:00', temp: '31°', image: 'assets/images/sun.png'),
    Weather(time: '22:00', temp: '24°', image: 'assets/images/rainy.png'),
    Weather(time: '00:00', temp: '26°', image: 'assets/images/rainy.png'),
    Weather(time: '02:00', temp: '25°', image: 'assets/images/cloudy.png'),
    Weather(time: '04:00', temp: '31°', image: 'assets/images/cloudy.png'),
    Weather(
        time: '06:00', temp: '24°', image: 'assets/images/cloudy_with_sun.png'),
    Weather(time: '08:00', temp: '31°', image: 'assets/images/sun.png'),
    Weather(
        time: '10:00', temp: '24°', image: 'assets/images/cloudy_with_sun.png'),
  ];

  final EdgeInsets padding;

  HourlyWeatherBar({@required this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: padding,
            child: Row(
              children: [
                Text(
                  'Today',
                  style: GoogleFonts.nunito(
                      color: Color(0xFF212121),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                ),
                Spacer(),
                Text(
                  'Next 7 days',
                  style: GoogleFonts.nunito(
                      color: Color(0xFF6B6B6B),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                ),
                Icon(
                  Icons.navigate_next,
                  color: Color(0xFF6B6B6B),
                )
              ],
            ),
          ),
          const SizedBox(height: 30.0),
          Container(
            height: 125.0,
            child: ListView.separated(
              padding: padding,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  HourlyWeatherCard(weather: _hourlyWeather[index]),
              itemCount: _hourlyWeather.length,
              separatorBuilder: (context, index) => const SizedBox(width: 10.0),
            ),
          )
        ],
      ),
    );
  }
}
