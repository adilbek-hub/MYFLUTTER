import 'package:flutter/material.dart';
import 'package:sabak17_f14/model/quize_model.dart';
import 'package:sabak17_f14/widget/quizButton.dart';
import 'package:sabak17_f14/widget/resulIcon.dart';

import 'kurs.dart';
import 'new_Screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  List jooptor = <bool>[];
  List tuuraJooptor = <bool>[];
  List kataJooptor = <bool>[];

  void teksher(bool value) {
    if (quizess[index].answer == value) {
      jooptor.add(true);
      tuuraJooptor.add(true);
    } else {
      jooptor.add(false);
      kataJooptor.add(false);
    }
    setState(() {
      if (quizess[index] == quizess.last) {
        index = 0;
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Siz testten:'),
              content: Text(
                  'Tuura joop ${tuuraJooptor.length} /Tuura emes jooptor:${kataJooptor.length}'),
            );
          },
        );
        jooptor.clear();
      } else {
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 23, 23),
      appBar: homeMathod(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const Spacer(),
            Text(
              quizess[index].question,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 45,
              ),
            ),
            const Spacer(),
            QuizButton(
              isTrue: true,
              onPresseded: (value) {
                teksher(value);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            QuizButton(
              isTrue: false,
              onPresseded: (value) {
                teksher(value);
              },
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: 40,
              child: ListView.builder(
                itemCount: jooptor.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int i) {
                  return jooptor[i]
                      ? const ResultIcon(true)
                      : const ResultIcon(false);
                },
              ),
            ),
            // Row(
            //   children: [
            //     ResultIcon(true),
            //     ResultIcon(false),
            //   ],
            // ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  AppBar homeMathod() {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: const Text(
        'Home Work -07',
        style: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}
