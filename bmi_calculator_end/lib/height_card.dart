import 'package:bmi_calculator_end/utils/app_colors.dart';
import 'package:bmi_calculator_end/utils/app_text.dart';
import 'package:bmi_calculator_end/utils/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeightCard extends StatelessWidget {
  const HeightCard({
    Key? key,
    required this.height,
    required this.onChanged,
  }) : super(key: key);
  final int height;
  final Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(),
        const Text(
          AppTexts.heightTitle,
          style: TextStyle(fontSize: 28, color: AppColors.forAllTextsColor),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$height",
              style: AppTextStyle.value180,
            ),
            const Text(
              AppTexts.cmTitle,
              style: AppTextStyle.cmStyle,
            ),
          ],
        ),
        SizedBox(
          width: 260.0,
          child: CupertinoSlider(
            value: height.toDouble(),
            max: 300,
            activeColor: AppColors.forSliderActiveColor,
            thumbColor: AppColors.forSliderthumpColor,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
