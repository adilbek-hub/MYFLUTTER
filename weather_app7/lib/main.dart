import 'package:flutter/material.dart';
import 'package:weather_app7/model/weather_model.dart';
import 'package:weather_app7/services/weather_api_client.dart';
import 'package:weather_app7/view/additional_information.dart';
import 'package:weather_app7/view/current_weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final client = WeatherApiClient();
  Weather? data;

  Future<void> getData() async {
    data = await client.getCurrentWeather('paris');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff9f9f9),
        appBar: AppBar(
          backgroundColor: Color(0xfff9f9f9),
          elevation: 0.0,
          title: const Text(
            'Weather App 7',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.black,
          ),
        ),
        body: FutureBuilder(
            future: getData(),
            builder: ((context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    currentWeather(Icons.wb_sunny_rounded, '${data!.temp}',
                        '${data!.cityName}'),
                    SizedBox(
                      height: 60.0,
                    ),
                    Text(
                      'Additional Information',
                      style: TextStyle(
                          fontSize: 24.0,
                          color: Color(0xff212121),
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(),
                    SizedBox(
                      height: 20.0,
                    ),
                    additionalInformation('${data!.wind}', '${data!.humidity}',
                        '${data!.pressure}', '${data!.feels_like}')
                  ],
                );
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Container();
            })));
  }
}
