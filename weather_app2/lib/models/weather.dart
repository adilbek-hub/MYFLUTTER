class Weather {
  Weather({
    required this.city,
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
    required this.country,
    required this.temp,
  });
  final int id;
  final String main;
  final String description;
  final String icon;
  final String city;
  final String country;
  final double temp;
}
