import 'package:flutter/material.dart';
import 'package:game_about_capitals/africa_page/africa_page.dart';
import 'package:game_about_capitals/asia_page/asia_page.dart';
import 'package:game_about_capitals/australia_page/australia_page.dart';
import 'package:game_about_capitals/australia_page/australia_country.dart';
import 'package:game_about_capitals/australia_page/vanuatu_country.dart';
import 'package:game_about_capitals/europe_page/europe_page.dart';
import 'package:game_about_capitals/home/home.dart';
import 'package:game_about_capitals/north_america_page/north_america_page.dart';
import 'package:game_about_capitals/south_america_page/south_america_page.dart';

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
      home: const AsiaPage(),
    );
  }
}
