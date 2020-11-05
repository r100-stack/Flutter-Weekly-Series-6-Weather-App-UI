import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app_6/constants.dart';
import 'package:weather_app_6/screens/home_screen/components/table_item.dart';

class WeatherCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(

      ),

      // TODO (1): child = Container()
      // TODO (2): Container.child = Column()

      // Column's children
      // TODO (3): 1. const SizedBox(height: 20.0)
      // TODO (4): 2. Image (150x100, assets/images/cloudy_with_sun.png)
      // TODO (5): 3. Text('Heavy Rain', Raleway, 0xFFE2EBFF, 24.0, bold)
      // TODO (6): 4. const SizedBox(height: 10.0)
      // TODO (7): 5. Text('Sunday, 02 Oct', Raleway, 0xFF7EA5FF, 16.0, w400)
      // TODO (8): 6. const SizedBox(height: 20.0)

      // TODO (9): Wrap the Container in ClipRRect => circular, kDefaultBorderRadius
      // TODO (10): Inner Container decoration(0xFF427BFF, CircularBorder(kDefaultBorderRadius))

      child: ClipRRect(
        borderRadius: BorderRadius.circular(kDefaultBorderRadius),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF427BFF),
            borderRadius: BorderRadius.circular(kDefaultBorderRadius),
          ),
          child: Column(
            children: [
              const SizedBox(height: 20.0),
              Image(
                height: 100.0,
                width: 150.0,
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/cloudy_with_sun.png',
                ),
              ),
              Text(
                'Heavy Rain',
                style: GoogleFonts.raleway(
                  color: Color(0xFFE2EBFF),
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                'Sunday, 02 Oct',
                style: GoogleFonts.raleway(
                  color: Color(0xFF7EA5FF),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),

    );
  }
}
