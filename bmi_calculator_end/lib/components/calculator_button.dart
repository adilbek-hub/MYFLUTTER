import 'package:bmi_calculator_end/utils/app_colors.dart';
import 'package:bmi_calculator_end/utils/app_text.dart';
import 'package:bmi_calculator_end/utils/text_style.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // print('bas');
      },
      child: Container(
        height: 70,
        width: double.infinity,
        color: AppColors.calculatorButtonColor,
        child: const Center(
            child: Text(
          AppTexts.calculatorTitle,
          style: AppTextStyle.bmiAndCalcolatorStyle,
        )),
      ),
    );
  }
}
