import 'dart:developer';
import 'dart:html';

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
import 'package:geolocator/geolocator.dart';

// egerde data tarmal kasha menen {} orolgon bolso al bir object
// egerde data charchy kasha menen [] kelgen bolso al bir list
//agayga suroo
// datany onoy okush uchun googlga extentiondu kantip koshobuz?
// asset.jsondogu datany kantip verticalniy kylabus
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> weatherLocation() async {
    //LocationPermission тибинде улуксат алып жатабыз
    LocationPermission permission = await Geolocator.checkPermission();
    // Эгер колдонуучунун телефонунда локацияны алганга уруксат берилген эмес болсо
    if (permission == LocationPermission.denied) {
      // колдонуучудан уруксат сурадык.
      permission = await Geolocator.requestPermission();
      //колдонуучу кайта уруксат бербей койсо
      if (permission == LocationPermission.always &&
          // колдонуучу тараптан мурда уруксат берилген болсо
          permission == LocationPermission.whileInUse) {
        //анда Бишкекти кайтадан көрсөтүп кой
        await fetchData();
      }
    } else {
      // анда локациясын ал
      Position position = await Geolocator.getCurrentPosition();
      await fetchData(
          APIConst.latLongaddres(position.latitude, position.longitude));
    }
  }

  // fetchData degen funksiabyz bar
  Future<Weather?> fetchData(String? url) async {
    // bul funksiany srazy ishtetpey 4 sekundtan kiyin ishtet
    await Future.delayed(const Duration(seconds: 0));
    // dio bul paket, bekend server menen bizdi baylanyshtyryp beret
    final dio = Dio();
    //get bul dionun metodu. datalarga, addresterge baryp biz bergen datalardy alyp kelet
    final res = await dio.get(url ?? APIConst.address);
    // 200 бул ийгиликтүү суроо талап бар деген нерсе
    if (res.statusCode == 200) {
      // eger statusCode iygiliktuu kelse weatherdegi tandalgan list,index,obektterdi kaytar ( return weather;)
      final Weather weather = Weather(
        id: res.data['weather'][0]['id'],
        main: res.data['weather'][0]['main'],
        description: res.data['weather'][0]['description'],
        icon: res.data['weather'][0]['icon'],
        city: res.data['name'],
        temp: res.data["main"]['temp'],
        country: res.data['sys']['country'],
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
      body: FutureBuilder<Weather?>(
        future: fetchData(),
        builder: ((context, joop) {
          // Eger joop internetke tutashkan bolso al internetke tutashkanda waiting bolso.
          if (joop.connectionState ==
              ConnectionState
                  .waiting /*ustudogu funksianyn ishteshin kutup jatat*/) {
            // Zagruskanyn iconkasyn korsotup koy.
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (joop.connectionState == ConnectionState.none) {
            return const Text('Интернетиңиз иштеген жок');
          } else if (joop.connectionState == ConnectionState.done) {
            if (joop.hasError) {
              return Text('${joop.error}');
            } else if (joop.hasData) {
              final weather = joop.data!;
              return Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Weather.jpeg'),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomIconButton(
                          icon: Icons.near_me,
                          onPressed: weatherLocation,
                        ),
                        CustomIconButton(
                          icon: Icons.location_city,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Expanded(
                      child: FittedBox(
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Text('${(weather.temp - 273.15).floorToDouble()}',
                                style: AppTextStyle.numberStyle),
                            Image.network(
                              // Булуттун размерин 4х кылдык. Мунун уландысы api_const.dart папкасында
                              APIConst.getIcon(weather.icon, 4),
                              fit: BoxFit.fitHeight,
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FittedBox(
                          child: Text(
                            weather.description.replaceAll('', '\n'),
                            // weather.description,
                            style: AppTextStyle.numberStyle,

                            // textAlign: TextAlign.right,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        )
                      ],
                    )),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            RotatedBox(
                              quarterTurns: 4,
                              child: Text(weather.city,
                                  style: AppTextStyle.numberStyle),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            RotatedBox(
                              quarterTurns: 1,
                              child: Text(
                                weather.country,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const Text('Belgisiz kata boldu suranych kayra kiriniz');
            }
          } else {
            return const Text('Belgisiz kata boldu suranych kayra kiriniz');
          }
        }),
      ),
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
