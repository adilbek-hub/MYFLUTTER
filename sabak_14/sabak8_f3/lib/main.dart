
import 'package:flutter/material.dart';
import 'package:sabak8_f3/users.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // MyApp класстын аталышы жана StatelessWidget мурас ал деп жатат.
  const MyApp({Key? key})
      : super(
            key:
                key); //Key бул ачкыч. Мисалы тиркемеге өзгөчө бир нерсе койсом ошону ключ аркылуу койом.
  @override // @override Атасындагы функцияны өзгөрт.
  Widget build(BuildContext context) {
    //build
    return MaterialApp(
        title: 'Flutter Demo', // Текст жазганга проперти
        theme: ThemeData(
          // Тема койгонго проперти
          primarySwatch: Colors.yellow, // основной образец//негизги үлгү
        ),
        home: const UsersPage());
  }
}
