import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/app.dart';

void main() {
  log('restart');
  WidgetsFlutterBinding.ensureInitialized(); //Привязка флаттера к виджетам.обеспечить инициализацию
  SystemChrome.setPreferredOrientations([ // Система Chrome.Тандалган багыттарды коюу
    DeviceOrientation.landscapeLeft, //Түзмөктүн багыты.пейзаж Слева
    DeviceOrientation.portraitDown,//Түзмөктүн багыты.портрет Вниз
  ]);
  runApp(const MyApp());
}