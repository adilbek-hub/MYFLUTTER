import 'package:flutter/material.dart';

class TryCatchPage extends StatefulWidget {
  const TryCatchPage({super.key});

  @override
  State<TryCatchPage> createState() => _TryCatchPageState();
}

class _TryCatchPageState extends State<TryCatchPage> {
  final birinch = TextEditingController();
  final ekinchi = TextEditingController();
  double summa = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '$summa',
              style: const TextStyle(
                  color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextFormField(
              controller: birinch,
            ),
            TextFormField(
              controller: ekinchi,
            ),
            ElevatedButton(
                onPressed: (() {
                  // Аракет кылып көр
                  try {
                    summa =
                        double.parse(birinch.text) + double.parse(ekinchi.text);
                    setState(() {});
                  } catch (e) {
                    // болбой калса
                    showAboutDialog(
                        context: context,
                        applicationName: 'Сиздин санда тамга кошулган');
                    print('$e');
                  }
                }),
                child: const Text('+')),
          ],
        ),
      ),
    );
  }
}
