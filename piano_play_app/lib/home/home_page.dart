import 'package:flutter/material.dart';
import 'package:piano_play_app/components/piano_black_button.dart';
import 'package:piano_play_app/components/piano_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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
        title: const Text('My Piano App'),
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: Center(
              child: Text('do re mi fa...'),
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
                        PianoWhiteButton('assets_notes_A (1)'),
                        PianoWhiteButton('assets_notes_A'),
                        PianoWhiteButton('assets_notes_Ab'),
                        PianoWhiteButton('assets_notes_B (1)'),
                        PianoWhiteButton('assets_notes_B'),
                        PianoWhiteButton('assets_notes_C'),
                        PianoWhiteButton('assets_notes_D'),
                      ],
                    ),
                    Positioned(
                      left: 40.0,
                      right: 0.0,
                      top: 0.0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          PianoBlackButton('assets_notes_Db'),
                          PianoBlackButton('assets_notes_E'),
                          PianoBlackButton('assets_notes_Eb'),
                          PianoBlackButton('assets_notes_F', visible: false),
                          PianoBlackButton('assets_notes_G'),
                          PianoBlackButton('assets_notes_Gb'),
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
