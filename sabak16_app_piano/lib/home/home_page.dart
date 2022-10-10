import 'package:flutter/material.dart';
// import 'package:piano_app/components/piano_black_button.dart';
// import 'package:piano_app/components/piano_button.dart';

import '../components/piano_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(), //ящик стола:Ящик стола,
      appBar: AppBar(
        backgroundColor: Colors.black, // фон түсү:Түстөр.кара,
        centerTitle: true, //борбордукAталышы: чын,
        title: const Text('My Piano App'),
      ),
      body: Column(
        //Мамыча
        children: [
          //балдар:
          const Expanded(
            flex: 1,
            child: (Text('do,re,mi')),
          ), //Расширенный
          Expanded(
            flex: 3, //Расширенный
            child: Stack(
              children: [
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 11, //количествоПредметов: 11,
                  itemBuilder: (context, index) {
                    return PianoWhiteButton(
                        /* Эмне себептен бул класс түзүлдү??*/);
                  },
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 11, //количествоПредметов: 11,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: SizedBox(
                          width: 80,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith(
                                (states) => Colors.black,
                              ),
                              overlayColor: MaterialStateProperty.resolveWith(
                                (states) {
                                  return states.contains(MaterialState.pressed)
                                      ? const Color.fromARGB(255, 175, 174, 174)
                                      : null;
                                },
                              ),
                            ),
                            onPressed: () {},
                            child: const Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: Text(
                                  'f3',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ), // //Конструктор предметов:
          ),
        ],
      ),
    );
  }
}
