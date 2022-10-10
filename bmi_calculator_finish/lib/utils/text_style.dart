import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyle {
  static const TextStyle greyTextStyle =
      TextStyle(fontSize: 28, color: AppColors.forAllTextsColor);

  static const TextStyle cmStyle =
      TextStyle(color: AppColors.forSmColor, fontSize: 18, height: 3.3);

  static const TextStyle forTxtStyle = TextStyle(
      fontSize: 35,
      color: AppColors.forSliderNumColor,
      fontWeight: FontWeight.w700);

  static const TextStyle bmiAndCalcolatorStyle = TextStyle(
      color: AppColors.forBmiTextColor,
      fontSize: 24,
      fontWeight: FontWeight.w600);

  static const TextStyle value180 = TextStyle(
      fontSize: 45,
      color: AppColors.forSliderNumColor,
      fontWeight: FontWeight.w700);
}
