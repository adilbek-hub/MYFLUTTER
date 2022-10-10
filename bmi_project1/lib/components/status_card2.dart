import 'package:bmi_project1/utils/app_colors.dart';
import 'package:bmi_project1/utils/app_text.dart';
import 'package:flutter/material.dart';

class StatusCard2 extends StatelessWidget {
  const StatusCard2({
    Key? key,
    required this.text,
    required this.icon,
    required this.txt,
  }) : super(key: key);
  final IconData icon;
  final String text;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: AppColors.forCardColor,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  text,
                  style: const TextStyle(
                      color: AppColors.forAllTextsColor, height: 3.0),
                ),
                Text(
                  txt,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 35,
                ),
                Icon(
                  // Bash alaman code
                  Icons.remove_circle,
                  size: 35,
                ),
                // Icon(
                //   icon,
                //   size: 35,
                // )
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
