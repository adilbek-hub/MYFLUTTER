import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app6/weather_model.dart';

class WeatherData {
  Future<Weather> getData(var latitube, var lingitube) async {
    var uriCall = Uri.parse(
        'http://api.weatherapi.com/v1/current.json?key=1920a9cbe6fe453b869105825221610&q=$latitube,$lingitube&aqi=no');
    var response = await http.get(uriCall);
    var body = jsonDecode(response.body);
    return Weather.fromJson(body);
  }
}
