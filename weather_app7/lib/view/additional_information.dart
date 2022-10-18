import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app7/constants/text_style.dart';

Widget additionalInformation(
    String wind, String humidity, String pressure, String feels_like) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'wind',
                  style: AppTextStyle.containerTextStyle,
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'pressure',
                  style: AppTextStyle.containerTextStyle,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$wind',
                  style: AppTextStyle.infoFont,
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  '$pressure',
                  style: AppTextStyle.infoFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'humidity',
                  style: AppTextStyle.containerTextStyle,
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'feel like',
                  style: AppTextStyle.containerTextStyle,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$humidity',
                  style: AppTextStyle.infoFont,
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  '$feels_like',
                  style: AppTextStyle.infoFont,
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}
