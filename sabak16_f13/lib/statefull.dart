import 'package:flutter/material.dart';
class FlutterPianoScreen extends StatefulWidget {
  const FlutterPianoScreen({
    Key? key,
  }) : super(key: key);

  final String title = 'Flutter Piano';

  @override
  State<FlutterPianoScreen> createState() => _FlutterPianoScreenState();
}


class _FlutterPianoScreenState extends State<FlutterPianoScreen> {
  Widget whiteTile(String tone, double position, double whiteWidth) {
  return Positioned(
    top: 0,
    left: position * whiteWidth,
    width: whiteWidth,
    bottom: 0,
    child: RawMaterialButton(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.black,
          width: 1,
        ),
      ),
    ),
  );
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget.title'),
      ),
      body: Center(
        child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints ){
          double whiteWidth = constraints.maxWidth / 7;
          return Stack(
            fit: StackFit.expand,
            children: [
              whiteTitle('C', 0, whiteWidth),
              whiteTitle('C', 1, whiteWidth),
              whiteTitle('C', 2, whiteWidth),
              whiteTitle('C', 3, whiteWidth),
              whiteTitle('C', 4, whiteWidth),
              whiteTitle('C', 5, whiteWidth),
              whiteTitle('C', 6, whiteWidth),
              blackTitle('Db', 1, whiteWidth, constraints.maxHeight),
              blackTitle('Db', 2, whiteWidth, constraints.maxHeight),
              blackTitle('Db', 3, whiteWidth, constraints.maxHeight),
              blackTitle('Db', 4, whiteWidth, constraints.maxHeight),
              blackTitle('Db', 5, whiteWidth, constraints.maxHeight),
              blackTitle('Db', 6, whiteWidth, constraints.maxHeight),
              
            ],
          );
        },
      ),
    ),
    );   
}
}


