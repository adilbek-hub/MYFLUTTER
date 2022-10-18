import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: ContainerBox(
                boxColor: const Color(0xffffffff),
                childWidget: DataContainer(),
              )),
              Expanded(
                  child: ContainerBox(
                boxColor: const Color(0xffffffff),
                childWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(
                      FontAwesomeIcons.venus,
                      size: 80.0,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'FEMALE',
                      style: TextStyle(
                          color: Color(
                            0xff000000,
                          ),
                          fontSize: 20.0),
                    ),
                  ],
                ),
              )),
            ],
          )),
          Expanded(
              child: ContainerBox(
            boxColor: const Color(0xffffffff),
            childWidget: Column(
              children: const <Widget>[
                Icon(FontAwesomeIcons.mars),
              ],
            ),
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: ContainerBox(
                boxColor: Color(0xffffffff),
                childWidget: Column(
                  children: const <Widget>[
                    Icon(FontAwesomeIcons.mars),
                  ],
                ),
              )),
              Expanded(
                  child: ContainerBox(
                boxColor: Color(0xffffffff),
                childWidget: Column(
                  children: const <Widget>[
                    Icon(FontAwesomeIcons.mars),
                  ],
                ),
              )),
            ],
          )),
        ],
      ),
    );
  }
}

class DataContainer extends StatelessWidget {
  const DataContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Icon(
          FontAwesomeIcons.mars,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          'MALE',
          style: TextStyle(
              color: Color(
                0xff000000,
              ),
              fontSize: 20.0),
        ),
      ],
    );
  }
}

class ContainerBox extends StatelessWidget {
  ContainerBox({required this.boxColor, required this.childWidget});
  final Color boxColor;
  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childWidget,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: boxColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5.0,
            blurRadius: 7.0,
            offset: const Offset(0, 3),
          ),
        ],
      ),
    );
  }
}
