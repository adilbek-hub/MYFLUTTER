import 'package:flutter/material.dart';
import 'package:piano_app2/component/piano_button.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  // func() async {
  //   var dio = Dio();
  //   final res = await dio.get('https://jsonplaceholder.typicode.com/posts');
  //   print(res.data);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Piano App 2'),
      ),
      body: Column(
        children: [
          Expanded(flex: 1, child: Center(child: Text('DO RE MI FA SO LA SI'))),
          Expanded(
            flex: 3,
            child: Stack(children: [
              ListView.builder(
                itemCount: 11,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Stack(
                    children: [
                      Row(
                        children: [
                          PianoWhiteButton(),
                        ],
                      ),
                      Row(),
                    ],
                  );
                }),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
