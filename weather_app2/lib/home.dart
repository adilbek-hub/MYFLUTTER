import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weather_app2/components/custom_icon_button.dart';
import 'package:weather_app2/constant/api_const.dart';
import 'package:weather_app2/constant/app_colors.dart';
import 'package:weather_app2/constant/app_text.dart';
import 'package:weather_app2/constant/app_text_style.dart';
import 'package:weather_app2/models/weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<Weather?> fetchData() async {
    final dio = Dio();
    final res = await dio.get(APIConst.address);
    // 200 бул ийгиликтүү суроо талап бар деген нерсе
    if (res.statusCode == 200) {
      final Weather weather = Weather(
        id: res.data['weather'][0]['id'],
        main: res.data['weather'][0]['main'],
        description: res.data['weather'][0]['description'],
        icon: res.data['weather'][0]['icon'],
      );

      return weather;
    }
  }

  @override
  Widget build(BuildContext context) {
    log('width=====> ${MediaQuery.of(context).size.width}');
    log('height=====> ${MediaQuery.of(context).size.height}');
    // Future методттордун кайтарган тибине карата бир нерсе көрсөтүү үчүн флаттерде FutureBuilder деген метод бар.
    // FutureBuilder бул виджет. Бул (future) деген типти алат.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.AppBarBackground,
        title: const Text(
          AppText.appBarTitile,
          style: TextStyle(color: AppColors.black),
        ),
        elevation: 0,
      ),
      body: Container(
          // width: double.infinity,
          // height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Weather.jpeg'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomIconButton(
                    icon: Icons.near_me,
                  ),
                  CustomIconButton(
                    icon: Icons.location_city,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text('8', style: AppTextStyle.numberStyle),
                  Image.network(
                    // Булуттун размерин 4х кылдык. Мунун уландысы api_const.dart папкасында
                    APIConst.getIcon('11d', 4),
                    fit: BoxFit.fitHeight,
                    height: 100,
                  ),
                ],
              )
            ],
          )),
      // body:
      //  Center(
      //   child: FutureBuilder(
      //     future: fetchData(),
      //     builder: (context, snapshot) {
      //       if (snapshot.hasData) {
      //         return Column(
      //           children: [
      //             Text(
      //               snapshot.data!.id.toString(),
      //             ),
      //             Text(
      //               snapshot.data!.description,
      //             ),
      //             Text(
      //               snapshot.data!.main,
      //             ),
      //             Text(
      //               snapshot.data!.icon,
      //             ),
      //           ],
      //         );
      //       } else if (snapshot.hasError) {
      //         return Text(snapshot.error.toString());
      //       } else {
      //         return const CircularProgressIndicator();
      //       }
      //     },
      //   ),
      // ),
    );
  }
}
