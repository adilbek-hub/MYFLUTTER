import 'package:capital_ui/components/test_page_appbar_title.dart';
import 'package:capital_ui/components/test_slider.dart';
import 'package:capital_ui/components/variants.dart';
import 'package:capital_ui/constants/app_color.dart';
import 'package:capital_ui/model/suroo.dart';
import 'package:flutter/material.dart';

class MyTestPage extends StatefulWidget {
  const MyTestPage({super.key, required this.suroo});
  final List<Suroo> suroo;

  @override
  State<MyTestPage> createState() => _MyTestPageState();
}

class _MyTestPageState extends State<MyTestPage> {
  int index = 0;
  int tuuraJooptor = 0;
  int kataJooptor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.appforegroundColor,
        backgroundColor: AppColors.bgColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: TestPageAppBarTitle(
          kataJooptor: kataJooptor,
          tuuraJooptor: tuuraJooptor,
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          TestSlider(
            value: index,
          ),
          Center(
            child: Text(
              widget.suroo[index].text,
              style: const TextStyle(fontSize: 20, height: 2),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                  'assets/images/capitals/${widget.suroo[index].image}.jpeg'),
            ),
          ),
          Variants(
            jooptor: widget.suroo[index].jooptor,
            onTap: (isTrue) {
              if (index + 1 == widget.suroo.length) {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Сиздин тест жыйынтыгыңыз!'),
                    content: Text('Туура: $tuuraJooptor\nКата:$kataJooptor'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          index = 0;

                          kataJooptor = 0;
                          tuuraJooptor = 0;
                          setState(() {});
                          Navigator.pop(context);
                        },
                        child: const Text('Cancel'),
                      ),
                    ],
                  ),
                );
              } else {
                if (isTrue == true) {
                  tuuraJooptor++;
                } else {
                  kataJooptor++;
                }
                setState(() {
                  index++;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
