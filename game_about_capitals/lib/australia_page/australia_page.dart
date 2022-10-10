import 'package:flutter/material.dart';
import 'package:game_about_capitals/constants/app_color.dart';
import 'package:game_about_capitals/constants/text_style.dart';
import 'package:game_about_capitals/models/continent.dart';

class AustraliaPage extends StatelessWidget {
  const AustraliaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBody,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text(
          'Австралия мамлекеттерине кош келиңиз',
          style: AppBarTextTextStyle.appBarTitleTextStyle,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          const Padding(
            padding: EdgeInsets.only(right: 15),
          ),
        ],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const Divider(
                height: 1,
                color: Colors.yellow,
                indent: 10,
                endIndent: 10,
                thickness: 0.0),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: australianCountiesList.length,
                  itemBuilder: ((context, index) {
                    final itemAustralia = australianCountiesList[index];
                    return Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Card(
                        color: AppColors.cardColor,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Text(itemAustralia.nameAustralia,style: CountriesNameTextStyle.countriesNameTextStyle,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                  'assets/icons/continents/${itemAustralia.imageAustralianCountries}.png'),
                            ),
                          ],
                        ),
                      ),
                    );
                  })),
            )
          ],
        ),
      ),
    );
  }
}
