import 'package:flutter/material.dart';
import '../components/piano_black_button.dart';
import '../components/piano_white_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text("My Piano App"),
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: Center(
              child: Text("do re mi fa"),
            ),
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        PianoWhiteButton('A'),
                        PianoWhiteButton('Ab'),
                        PianoWhiteButton('B'),
                        PianoWhiteButton('Bb'),
                        PianoWhiteButton('C'),
                        PianoWhiteButton('D'),
                        PianoWhiteButton('Db'),
                      ],
                    ),
                    Positioned(
                      left: 50.0,
                      right: 0.0,
                      top: 0.0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          PianoBlackButton('E'),
                          PianoBlackButton('Eb'),
                          PianoBlackButton('F'),
                          PianoBlackButton('G',
                            visible: false,
                          ),
                          PianoBlackButton('Gb'),
                          PianoBlackButton('A'),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
