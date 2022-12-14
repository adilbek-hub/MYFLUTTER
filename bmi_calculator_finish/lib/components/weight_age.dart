import 'package:bmi_calculator_finish/utils/app_colors.dart';
import 'package:bmi_calculator_finish/utils/text_style.dart';
import 'package:flutter/material.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    Key? key,
    required this.text,
    required this.txt,
    required this.remove,
    required this.add,
  }) : super(key: key);

  final String text;
  final int txt;
  final void Function(int) remove;
  final void Function(int) add;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              text,
              style: AppTextStyle.greyTextStyle,
            ),
            Text(
              '$txt', // суроо. txt бул стринг тибинде эмес, сен стриң беришиң керек дейт. Суроо. Биз устуго маани бергенде инт бербейби? же эмнеге устуно инт берип бирок жерине стринг менен берип жатабыз?
              style: AppTextStyle.forTxtStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AddRemoveButton(
                  IconRemoveAdd: Icons.remove,
                  onPressed: () => remove(txt-1),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                AddRemoveButton(
                  IconRemoveAdd: Icons.add,
                  onPressed: () => add(txt+1),
                ),
                const SizedBox(
                  width: 5.0,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class AddRemoveButton extends StatelessWidget {
  const AddRemoveButton({
    Key? key,
    required this.IconRemoveAdd,
    required this.onPressed,
  }) : super(key: key);
  final IconData IconRemoveAdd;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      backgroundColor: AppColors.forFloatingBackgroundColor,
      foregroundColor: Color.fromARGB(244, 93, 115, 3),
      onPressed: onPressed,
      child: Icon(
        IconRemoveAdd,
        size: 20,
      ),
    );
  }
}
