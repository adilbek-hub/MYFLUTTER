import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app7/model/weather_model.dart';

class WeatherApiClient {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        'http://api.weatherapi.com/v1/current.json?key=1920a9cbe6fe453b869105825221610&q=$location&aqi=no');

    var resposne = await http.get(endpoint);
    var body = jsonDecode(resposne.body);
    return Weather.fromJson(body);
  }
}
