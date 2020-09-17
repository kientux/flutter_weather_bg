import 'package:flutter/material.dart';
import 'package:flutter_weather_bg/bg/weather_cloud_bg.dart';
import 'package:flutter_weather_bg/bg/weather_color_bg.dart';
import 'package:flutter_weather_bg/bg/weather_night_star_bg.dart';
import 'package:flutter_weather_bg/bg/weather_rain_snow_bg.dart';
import 'package:flutter_weather_bg/bg/weather_thunder_bg.dart';
import 'package:flutter_weather_bg/utils/print_utils.dart';
import 'package:flutter_weather_bg/weather_type.dart';

double globalHeight = 0.0;
double globalWidth = 0.0;

class WeatherBg extends StatefulWidget {
  final WeatherType weatherType;

  WeatherBg({Key key, this.weatherType, @required double width, @required double height}) : super(key: key){
    globalWidth =  width;
    globalHeight = height;
  }

  @override
  _WeatherBgState createState() => _WeatherBgState();
}

class _WeatherBgState extends State<WeatherBg> {
  @override
  Widget build(BuildContext context) {
    weatherPrint("xiaweizi::width: $globalWidth, height: $globalHeight");
    return Container(
      color: Colors.yellow,
      child: ClipRect(
        child: Stack(
          children: [
            WeatherColorBg(weatherType: widget.weatherType),
            WeatherCloudBg(
              weatherType: widget.weatherType,
            ),
            WeatherRainSnowBg(
              weatherType: widget.weatherType,
            ),
            WeatherThunderBg(
              weatherType: widget.weatherType,
            ),
            WeatherNightStarBg(
              weatherType: widget.weatherType,
            ),
          ],
        ),
      ),
    );
  }
}
