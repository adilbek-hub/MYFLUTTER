import 'package:flutter/material.dart';

class Kurs extends StatelessWidget {
  const Kurs( {
    Key? key, required this.isTrue}) : super(key: key);
  final bool isTrue;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          primary: isTrue ? Colors.yellow : Colors.red),
      child: const Text('Биздин кнопка'),
    );
  }
}
