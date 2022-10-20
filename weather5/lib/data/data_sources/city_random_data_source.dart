import 'package:weather5/core/either.dart';
import 'package:weather5/core/failure.dart';
import 'package:weather5/data/models/city_model.dart';
import 'package:weather5/domain/entities/city.dart';


const randomCityNames = [
  'Amsterdam',
  'London',
  'Paris',
  'New York',
  'Las Vegas',
  'Texas',
  'Ohio',
  'Riyadh',
  'Dubay',
  'Istanbul',
  'Berlin',
  'Tokio',
  'Doha',
  'Venice',
  'Sydney'
];

class CityRandomDataSource {
  Future<Either<Failure, CityModel>> getCity() async => Right(CityModel(City(
        name: _randomCityNames[Random().nextInt(_randomCityNames.length)],
      )));
}

final cityRandomDataSourceProvider = Provider((ref) => CityRandomDataSource());
