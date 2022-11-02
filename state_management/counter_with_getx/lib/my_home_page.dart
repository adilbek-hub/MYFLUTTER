import 'package:counter_with_getx/counter_controller.dart';
import 'package:counter_with_getx/my_home_page2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// UIды StatefulWidgetте гана кайра кура алабыз! Эмне менен? setState менен!. Эгер пакет колдонбосок!
// setState бул StatefulWidgetте гана колдонулат.
class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // UIда колдонуу учун экземпляр алып келдик. CounterControllerибизди алып келдик.
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => MyHomePage2())));
                },
                child: Text('====>>'))
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            // c га келген с нын ичиндеги Increment функциясын бердим.
            onPressed: c.increment,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
