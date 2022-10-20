import 'package:weather5/core/either.dart';
import 'package:weather5/core/failure.dart';
import 'package:weather5/data/models/api_key_model.dart';
import 'package:weather5/data/provider.dart';
import 'dart:convert';
import 'dart:io';

import 'package:riverpod/riverpod.dart';




const _apiKeyPrefskey = "open_weather_map_api_key";

class ApiKeyLocalDataSource {
  ApiKeyLocalDataSource(this._prefs);

  final SharedPreferences _prefs;

  Future<Either<Failure,ApiKeyModel>> get ApiKey() async =>
  Right(ApiKeyModel.parse(_prefs.getString(_apiKeyPrefskey)));

  Future<Either<Failure,void>> setApiKey(ApiKeyModel model)async{
    if(model.isCustom){
      await _prefs.setString(_apiKeyPrefskey, model.apiKey);
    }else{
      await _prefs.remove(_apiKeyPrefskey);
    }

    return const Right(null);
  }
}

final ApiKeyLocalDataSourceProvider = Provider(
  (ref) => ApiKeyLocalDataSource(ref.watch(sharedPreferencesProvider)),
);
