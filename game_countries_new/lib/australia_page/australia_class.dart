import 'package:flutter/material.dart';
import 'package:game_countries_new/constants/text_style.dart';

class TextAboutCountry extends StatelessWidget {
  const TextAboutCountry(
      {Key? key, required this.bigtext, required this.smalltext})
      : super(key: key);
  final String smalltext;
  final String bigtext;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          smalltext,
          style: AustraliaSmallTextStyle.australiaSmallText,
        ),
        Text(
          bigtext,
          style: AustraliaBigTextStyle.australiaBigText,
        ),
      ],
    );
  }
}