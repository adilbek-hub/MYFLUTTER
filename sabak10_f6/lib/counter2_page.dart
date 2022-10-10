import 'package:flutter/material.dart';

class Counter2 extends StatelessWidget {
  const Counter2({Key? kluch, required this.san}) : super(key: kluch);
  final int san;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter 2'),
      ),
      body: Center(
        child: Text(
          '$san',
          style: const TextStyle(fontSize: 70),
        ),
      ),
    );
  }
}
