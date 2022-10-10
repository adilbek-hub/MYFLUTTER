import 'package:example_capitals/model/continents.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Continents(),
    );
  }
}

class Continents extends StatefulWidget {
  const Continents({super.key});

  @override
  State<Continents> createState() => _ContinentsState();
}

class _ContinentsState extends State<Continents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          textAlign: TextAlign.center,
          'Continents',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: continentList.length,
                  itemBuilder: ((context, index) {
                    final item = continentList[index];
                    return Card(
                      child: Column(
                        children: [
                          Text('const ${item.name}'),
                          Image.asset('assets/images/continent/${item.image}.png'),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
