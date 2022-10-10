import 'dart:math' as math;

import 'package:bmi_calculator_finish/components/male_female.dart';
import 'package:bmi_calculator_finish/components/weight_age.dart';
import 'package:bmi_calculator_finish/height_card.dart';
import 'package:bmi_calculator_finish/utils/app_colors.dart';
import 'package:bmi_calculator_finish/utils/app_text.dart';
import 'package:bmi_calculator_finish/utils/text_style.dart';
import 'package:flutter/material.dart';

import 'components/calculator_button.dart';
import 'components/status_cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool femalege = false;
  int slider = 180;
  int weight = 60;
  int age = 28;
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
              children: [
                StatusCard(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        femalege = true;
                      });
                    },
                    child: MaleFemale(
                      icon: Icons.male,
                      text: AppTexts.maleTitle,
                      isFemale: !femalege,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                StatusCard(
                    child: InkWell(
                  onTap: () {
                    setState(() {
                      femalege = false;
                    });
                  },
                  child: MaleFemale(
                    icon: Icons.female,
                    text: AppTexts.femaleTitle,
                    isFemale: femalege,
                  ),
                )),
              ],
            )),
            const SizedBox(
              height: 20,
            ),
            StatusCard(
              child: HeightCard(
                height: slider,
                onChanged: (val) {
                  setState(() {
                    slider = val.toInt();
                  });
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Row(
              children: [
                StatusCard(
                  child: WeightAge(
                    text: AppTexts.weightTitle,
                    txt: weight,
                    remove: (value) {
                      setState(() {
                        weight = value;
                      });
                    },
                    add: (value) {
                      setState(() {
                        weight = value;
                      });
                    },
                  ),
                  // text: AppTexts.weightTitle,
                  // txt: 60,
                ),
                const SizedBox(
                  width: 20,
                ),
                StatusCard(
                  child: WeightAge(
                    text: AppTexts.ageTitle,
                    txt: age,
                    remove: (value) {
                      setState(() {
                        age = value;
                      });
                    },
                    add: (value) {
                      setState(() {
                        age = value;
                      });
                    },
                  ),
                  // text: AppTexts.ageTitle,
                  // txt: 28,
                ),
              ],
            )),
          ],
        ),
      ),
      bottomNavigationBar: CalculatorButton(
        onTap: () {
          final res = weight / math.pow(weight / 100, 2);
          if (res <= 18.0) {
            dialogBuilder(context, AppTexts.thin);
            print('aryk');
          } else if (res >= 18.5 && res <= 24.9) {
            dialogBuilder(context, AppTexts.normal);
            print('norma');
          } else if (res >= 25) {
            dialogBuilder(context, AppTexts.fat);
            print('semiz');
          } else {
            dialogBuilder(context, AppTexts.sorry);
            print('joop jok');
          }
        },
      ),
    );
  }
}

Future<void> dialogBuilder(BuildContext context, String text) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.backgroundColor,
        title: const Center(child: Text(AppTexts.appBarTitle)),
        content: Text(
          text,
          style: AppTextStyle.bmiAndCalcolatorStyle,
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text(AppTexts.backButton),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
