import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/news/bindings/news_binding.dart';
import '../modules/news/views/news_view.dart';
import '../modules/weather/bindings/weather_binding.dart';
import '../modules/weather/views/weather_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.NEWS;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.NEWS,
      page: () => NewsView(),
      binding: NewsBinding(),
    ),
    GetPage(
      name: _Paths.WEATHER,
      page: () => const WeatherView(),
      binding: WeatherBinding(),
    ),
  ];
}
