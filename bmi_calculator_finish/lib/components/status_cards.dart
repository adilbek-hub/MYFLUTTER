import 'package:bmi_calculator_finish/utils/app_colors.dart';
import 'package:bmi_calculator_finish/utils/app_text.dart';
import 'package:bmi_calculator_finish/utils/text_style.dart';
import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Card(
      color: AppColors.maleColor,
      child: child,
    ));
  }
}




