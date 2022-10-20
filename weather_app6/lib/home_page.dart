import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app6/constants/text_style.dart';
import 'package:weather_app6/getLocation.dart';
import 'package:weather_app6/weather_data.dart';

var dayInfo = DateTime.now();
var dateFormat = DateFormat('EEEE, d MMM, yyyy').format(dayInfo);

class MyHomePage extends StatelessWidget {
  var client = WeatherData();
  var data;

  info() async {
    var position = await GetPosition();
    data = await client.getData(position.latitude, position.longitude);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: FutureBuilder(
      future: info(),
      builder: ((context, snapshot) {
        return Container(
          child: Column(
            children: [
              Container(
                height: size.height * 0.80,
                width: size.width,
                padding: const EdgeInsets.only(top: 30),
                margin: const EdgeInsets.only(right: 5, left: 5),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 236, 143, 232),
                          Color.fromARGB(255, 121, 212, 240),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: [0.2, 0.85])),
                child: Column(
                  children: [
                    Text(
                      '${data?.cityName}',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 30,
                          fontFamily: 'MavenPro'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      dateFormat,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 15,
                          fontFamily: 'MavenPro'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Image.network(
                      'http:${data?.icon}',
                      width: size.width * 0.36,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${data?.condition}',
                      style: AppStyles.dataCondition,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${data?.temp}°',
                      style: AppStyles.dataTemp,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Storm.png',
                                width: size.width * 0.15,
                              ),
                              Text(
                                '${data?.wind} km/h',
                                style: AppStyles.dataStyles1,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Wind',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white.withOpacity(0.6),
                                    fontFamily: 'MavenPro'),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Humidity.png',
                                width: size.width * 0.15,
                              ),
                              Text(
                                '${data?.humidity}',
                                style: AppStyles.dataStyles1,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Humidity',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white.withOpacity(0.6),
                                    fontFamily: 'MavenPro'),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            Image.asset(
                              'assets/images/wind-direction.png',
                              width: size.width * 0.15,
                            ),
                            Text(
                              '${data?.wind_dir}',
                              style: AppStyles.dataStyles1,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Wind Direction',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white.withOpacity(0.6),
                                  fontFamily: 'MavenPro'),
                            ),
                          ],
                        )),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Text(
                        'Guest',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontFamily: 'MavenPro',
                            fontSize: 10),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${data?.gust} kp/h',
                        style: AppStyles.dataStyles2,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Pressure',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontFamily: 'MavenPro',
                            fontSize: 10),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${data?.pressure} hpa',
                        style: AppStyles.dataStyles2,
                      )
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      Text(
                        'UV',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontFamily: 'MavenPro',
                            fontSize: 10),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${data?.uv}',
                        style: AppStyles.dataStyles2,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Presipitation',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontFamily: 'MavenPro',
                            fontSize: 10),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${data?.pricipe} mm',
                        style: AppStyles.dataStyles2,
                      )
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      Text(
                        'Wind',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontFamily: 'MavenPro',
                            fontSize: 10),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text('${data?.wind_dir} km/h',
                          style: AppStyles.dataStyles2),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Last Update',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontFamily: 'MavenPro',
                            fontSize: 10),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      FittedBox(
                        child: Text(
                          '${data?.last_update}',
                          style: AppStyles.dataLastUpdate,
                        ),
                      )
                    ],
                  ))
                ],
              )
            ],
          ),
        );
      }),
    ));
  }
}
