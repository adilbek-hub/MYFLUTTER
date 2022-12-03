import 'package:flutter/material.dart';
import 'package:try_catch_context/app.dart';
import 'package:try_catch_context/try_catch_page.dart';

/*
МАКСАТ:
Бир текст Эки TextField жана Button болсун. Эки TextFieldге контороллер коюлсун жана сумма жазып Buttonду 
басканда текстте экөөнүн суммасын чыгарсын.

1. Корпустагы колоннага 0 атту техт, 2 TextFormField, астына button түз.
2. TextFormFieldтеги текстти конторолдо.
3. Эсеп тексттен көрүнүшү үчүн бир функция түз. (double summa = 0;)
4. ElevatedButtondogu onPressedге birinch контрол менен ekinchi контролду кошуп кой. 
Кошууда Биз берген summaга  birinch жана ekinchi ге барабарланышы шарт. Ошондо логиканын иштеши,
summaга эки кошулган сандын чыккан суммасы берилет.  
5. try catch колдон.
 */

void main() {
  runApp(const MyApp());
}
