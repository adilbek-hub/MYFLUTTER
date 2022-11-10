import 'package:flutter/material.dart';
import 'package:weather_app_getx/constant/app_colors.dart';

class AppTextStyle {
  static const appBar = TextStyle(
    color: AppColors.black,
    fontSize: 28,
  );

  static const numberStyle = TextStyle(
      color: AppColors.numberWeatherColor,
      fontSize: 40,
      fontWeight: FontWeight.bold);

  static const bottomSheet = TextStyle(
      color: Color.fromARGB(255, 11, 61, 15),
      fontSize: 20,
      fontWeight: FontWeight.bold);
}
