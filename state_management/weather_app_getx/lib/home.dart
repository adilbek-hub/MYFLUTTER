import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_getx/components/custom_icon_button.dart';
import 'package:weather_app_getx/constant/api_const.dart';
import 'package:weather_app_getx/constant/app_colors.dart';
import 'package:weather_app_getx/constant/app_text.dart';
import 'package:weather_app_getx/constant/app_text_style.dart';
import 'package:weather_app_getx/models/weather.dart';
import 'package:geolocator/geolocator.dart';

const List cities = <String>[
  'Бишкек',
  'Баткен',
  'Ош',
  'Жалал-Абад',
  'Нарын',
  'Талас',
  'Каракол',
];

// egerde data tarmal kasha menen {} orolgon bolso al bir object
// egerde data charchy kasha menen [] kelgen bolso al bir list

//<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" /> => геолокатор плагини тарабынан колдонуу
//<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" /> => геолокатор плагини тарабынан колдонуу
/* Иштеп чыгуу үчүн INTERNET уруксаты талап кылынат. Тактап айтканда,
Flutter куралы иштеп жаткан колдонмо менен байланышуу үчүн керек
токтотуу чекиттерин орнотууга уруксат берүү, ысык кайра жүктөө ж.б.
бул интернетти кошкондон кийин терминалга flutter clean анан flutter pub get анан flutter build apk
<uses-permission android:name="android.permission.INTERNET"/>*/

//agayga suroo
// datany onoy okush uchun googlga extentiondu kantip koshobuz?
// asset.jsondogu datany kantip verticalniy kylabus?
// ((90)) bul emne?
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Weather? weather;
  Future<void> weatherLocation() async {
    setState(() {
      weather = null;
    });
    /*1. КОЛДОНУУЧУ УЧУН ГЕОЛОКАТОР ИШТЕТУУ ҮЧҮН ГЕОЛОКАТОРДУ ИШТЕТҮҮ УРУКСАТЫН АЛУУ ЖАНА КОЛДОНУУЧУНУН ӨЗҮНӨН ТИРКЕМЕСИНДЕ ГЕОЛОКАТОРДУН ИШТЕШИ ТУУРАЛУУ УРУКСАТ СУРОО ТАЛАПТАРЫ*/
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
        /*2. ГЕОЛОКАЦИЯНЫ ИШТЕТҮҮ УРУКСАТЫ БЕРИЛСЕ, КОЛДОНУУЧУДАН МАКУЛДУК БОЛСО, КОЛДОНУУЧУ МУРДА ЭЛЕ УРУКСАТ БЕРГЕН БОЛСО КИЙИНКИ ПОЗИЦИЯГА ӨТ*/
        Position position = await Geolocator.getCurrentPosition();
        // Dio(); bul flutter tarabynan ishtelip chykkan packet. Interceptors, Global конфигурация, FormData, Request Request, File Download, Timeout ж.б. колдойт.
        final dio = Dio();
        // dio пакети аркылуу мен берген багыттагы датага бар
        final res = await dio
            .get(APIConst.latLongaddres(position.latitude, position.longitude));
        //Эгер датага баруу ийгиликтүү болсо
        if (res.statusCode == 200) {
          // анда ошол датанын ичиндеги белгиленген объекттерди ал жана аларды weatherге барабарлап кой
          weather = Weather(
            id: res.data['current']['weather'][0]['id'],
            main: res.data['current']['weather'][0]['main'],
            description: res.data['current']['weather'][0]['description'],
            icon: res.data['current']['weather'][0]['icon'],
            city: res.data['timezone'],
            temp: res.data['current']['temp'],
            // country: res.data['sys']['country'],
          );
        }
        setState(() {});
      }
    } else {
      Position position = await Geolocator.getCurrentPosition();
      final dio = Dio();
      final res = await dio
          .get(APIConst.latLongaddres(position.latitude, position.longitude));
      if (res.statusCode == 200) {
        weather = Weather(
          id: res.data['current']['weather'][0]['id'],
          main: res.data['current']['weather'][0]['main'],
          description: res.data['current']['weather'][0]['description'],
          icon: res.data['current']['weather'][0]['icon'],
          city: res.data['timezone'],
          temp: res.data['current']['temp'],
        );
      }

      setState(() {});
    }
  }

  Future<void> weatherName([String? name]) async {
    // await Future.delayed(const Duration(seconds: 4));
    final dio = Dio();
    final res = await dio.get(APIConst.address(name ?? 'Bishkek'));
    if (res.statusCode == 200) {
      weather = Weather(
        id: res.data['weather'][0]['id'],
        main: res.data['weather'][0]['main'],
        description: res.data['weather'][0]['description'],
        icon: res.data['weather'][0]['icon'],
        city: res.data['name'],
        temp: res.data["main"]['temp'],
        country: res.data['sys']['country'],
      );
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    weatherName();
  }

  @override
  Widget build(BuildContext context) {
    // log('width=====> ${MediaQuery.of(context).size.width}');
    // log('height=====> ${MediaQuery.of(context).size.height}');
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
      body: weather == null
          ? const Center(child: CircularProgressIndicator())
          : Container(
              width: double.infinity,
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
                          onPressed: () async {
                            await weatherLocation();
                          }),
                      CustomIconButton(
                        icon: Icons.location_city,
                        onPressed: () {
                          showBottom();
                        },
                      ),
                    ],
                  ),
                  Expanded(
                    child: FittedBox(
                      child: Row(
                        children: [
                          // const SizedBox(
                          //   width: 10,
                          // ),
                          Text('${(weather!.temp - 273.15).floorToDouble()}',
                              style: AppTextStyle.numberStyle),
                          Image.network(
                            // Булуттун размерин 4х кылдык. Мунун уландысы api_const.dart папкасында
                            APIConst.getIcon(weather!.icon, 4),
                            fit: BoxFit.fitHeight,
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FittedBox(
                            child: Text(
                              weather!.description,
                              // weather.description,
                              style: AppTextStyle
                                  .numberStyle, /*((90)) => bul emne*/

                              // textAlign: TextAlign.right,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      )),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10, top: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RotatedBox(
                            quarterTurns: 4,
                            child: Text(weather!.city,
                                style: AppTextStyle.numberStyle),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  void showBottom() {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.7,
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 7),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 88, 87, 84),
            border: Border.all(color: AppColors.numberWeatherColor),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
          ),
          child: ListView.builder(
            itemCount: cities.length,
            itemBuilder: (BuildContext context, int index) {
              final city = cities[index];
              return Card(
                child: ListTile(
                  onTap: () async {
                    setState(() {
                      weather = null;
                    });
                    weatherName(city);
                    Navigator.pop(context);
                  },
                  title: Text(
                    city,
                    style: AppTextStyle.bottomSheet,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
