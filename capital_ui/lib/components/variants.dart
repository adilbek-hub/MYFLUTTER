import 'package:capital_ui/model/suroo.dart';
import 'package:flutter/material.dart';

class Variants extends StatelessWidget {
  const Variants({
    Key? key,
    required this.jooptor,
    required this.onTap,
  }) : super(key: key);
  final List<Joop> jooptor;
  final Function(bool) onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        // flex: 2,
        child: GridView.builder(
            // physics: NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.3,
            ),
            itemCount: 4,
            itemBuilder: ((context, index) {
              return Card(
                color: const Color.fromARGB(255, 102, 99, 99),
                child: InkWell(
                  onTap: () {
                    onTap(jooptor[index].isTrue);
                  },
                  child: Center(
                    child: Text(jooptor[index].text),
                  ),
                ),
              );
            })));
  }
}
