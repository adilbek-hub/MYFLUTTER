import 'package:counter_with_getx/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MyHomePage2 extends StatelessWidget {
  MyHomePage2({super.key});

  final c = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    print('build metod ishtedi');
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Obx гана колдонулду',
            ),
            // с га экземплярланган CounterController классыбыздагы san өзгөрмө берилди, бул нольго барабар болчу.
            // Obx деген бул класстын ичиндеги логиканы тыңшап турат жана ошого карап UIда курат.
            Obx((() {
              // print('obx');
              return Text('Эсеп:${c.san}');
            })),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('<======'))
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: c.degrement,
            tooltip: 'degrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
