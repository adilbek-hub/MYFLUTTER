import 'package:flutter/material.dart';
import 'package:sabak17_f14/stateful.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// Этот виджет является корнем вашего приложения.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // showSemanticsDebugger: true,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}