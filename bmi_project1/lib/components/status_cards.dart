import 'package:bmi_project1/utils/app_colors.dart';
import 'package:bmi_project1/utils/app_text.dart';
import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Card( 
      color: AppColors.maleColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 80),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(color: AppColors.forAllTextsColor),
          ),
        ],
      ),
    ));
  }
}
