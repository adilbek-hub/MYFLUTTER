import 'package:flutter/material.dart';
// import 'package:piano_app/home/home_page.dart';
import 'package:sabak16_app_piano/main.dart';

import '../home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(), //тема: ТемаМаалыматтары.dark(),
      home: const HomePage(),
    );
  }
}