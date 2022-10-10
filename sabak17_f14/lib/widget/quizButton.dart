import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget {
  const QuizButton({Key? key, required this.isTrue, required this.onPresseded})
      : super(
          key: key,
        );
  final bool isTrue;
  // final => Men bir gana jolu maani berem dagy any ozgortpoym
  //void => returnType (ech nerse kaytarbayt)
  // Function => bul function
  // () => chakyrylgan funksiya
  // bool funksiyany berip jatkanda koldonuuchu jardamchy parametr
  // onPressed atalyshy
  final void Function(bool)
      onPresseded; // function kurup aga bool tibin berebiz

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // bosh orundu toluk eeleyt
      height: 40,
      child: ElevatedButton(
        onPressed: () => onPresseded(isTrue),
        style: ElevatedButton.styleFrom(
          primary: isTrue ? Colors.green : Colors.red,
        ),
        child: Text(
          isTrue ? 'Туура' : 'Туура эмес',
          style: const TextStyle(
            fontSize: 26,
          ),
        ),
      ),
    );
  }
}
