import 'package:flutter/material.dart';
import 'package:game_countries_new/africa_page/africa_page.dart';
import 'package:game_countries_new/asia_page/asia_page.dart';
import 'package:game_countries_new/australia_page/australia_page.dart';
import 'package:game_countries_new/australia_page/australia_country.dart';
import 'package:game_countries_new/australia_page/vanuatu_country.dart';

import 'package:game_countries_new/home/home.dart';
import 'package:game_countries_new/north_america_page/north_america_page.dart';
import 'package:game_countries_new/south_america_page/south_america_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const VanuatyCountry(),
    );
  }
}