import 'package:bmi_project1/utils/app_colors.dart';
import 'package:bmi_project1/utils/app_text.dart';
import 'package:flutter/material.dart';
import '';

import 'components/calculator_button.dart';
import 'components/status_card2.dart';
import 'components/status_cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.backgroundColor,
        title: const Text(
          AppTexts.appBarTitle,
          style: TextStyle(
              color: AppColors.forBmiTextColor,
              fontSize: 24,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
                child: Row(
              children: const [
                StatusCard(
                  icon: Icons.male,
                  text: AppTexts.maleTitle,
                ),
                SizedBox(
                  width: 20,
                ),
                StatusCard(
                  icon: Icons.female,
                  text: AppTexts.femaleTitle,
                ),
              ],
            )),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Card(
                color: AppColors.forCardColor,
                child: Column(
                  children: [Row()],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Row(
              children: const [
                StatusCard2(
                  text: AppTexts.weightTitle,
                  txt: AppTexts.weightTitle,
                  icon: Icons.add_circle,
                ),
                SizedBox(
                  width: 20,
                ),
                StatusCard2(
                  text: AppTexts.weightTitle,
                  txt: AppTexts.weightTitle,
                  icon: Icons.add_circle,
                ),
              ],
            )),
          ],
        ),
      ),
      bottomNavigationBar: const CalculatorButton(),
    );
  }
}
