import 'package:bmi_calculator_finish/utils/app_colors.dart';
import 'package:bmi_calculator_finish/utils/app_text.dart';
import 'package:bmi_calculator_finish/utils/text_style.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    Key? key, required this.onTap
  }) : super(key: key);
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
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
