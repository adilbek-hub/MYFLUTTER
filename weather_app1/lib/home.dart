import 'dart:html';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weather_app1/constant/api_const.dart';
import 'package:weather_app1/models/weather.dart';

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
    // Future методттордун кайтарган тибине карата бир нерсе көрсөтүү үчүн флаттерде FutureBuilder деген метод бар.
    // FutureBuilder бул виджет. Бул (future) деген типти алат.
    return Scaffold(
        appBar: AppBar(
          title: const Text('Weather'),
        ),
        body: Center(
          child: FutureBuilder(
            future: fetchData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Text(
                      snapshot.data!.id.toString(),
                    ),
                    Text(
                      snapshot.data!.description,
                    ),
                    Text(
                      snapshot.data!.main,
                    ),
                    Text(
                      snapshot.data!.icon,
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
        ));
  }
}
