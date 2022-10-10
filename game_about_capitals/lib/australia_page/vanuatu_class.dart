import 'package:flutter/material.dart';
import 'package:game_about_capitals/constants/text_style.dart';

class TextAboutCountryVanuatu extends StatelessWidget {
  const TextAboutCountryVanuatu({
    Key? key,required this.textQuastion, required this.textVanuatu
  }) : super(key: key);
  final String textVanuatu;
  final String textQuastion;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        Text(
          textQuastion,
          style: AustraliaSmallTextStyle.australiaSmallText,
        ),
        Text(
          textVanuatu,
          style: AustraliaBigTextStyle.australiaBigText,
        )
      ],
    );
  }
}