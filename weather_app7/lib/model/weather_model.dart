class Weather {
  Weather(
      {this.cityName,
      this.temp,
      this.wind,
      this.humidity,
      this.feels_like,
      this.pressure});

  String? cityName;
  double? temp;
  double? wind;
  int? humidity;
  double? feels_like;
  double? pressure;

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json['location']['name'];
    temp = json['current']['temp_c'];
    wind = json['current']['wind_mph'];
    humidity = json['current']['humidity'];
    feels_like = json['current']['feelslike_c'];
    pressure = json['current']['pressure_mb'];
  }
}
