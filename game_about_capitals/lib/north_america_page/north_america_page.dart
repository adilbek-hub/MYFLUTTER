import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:game_about_capitals/constants/app_color.dart';
import 'package:game_about_capitals/constants/text_style.dart';
import 'package:game_about_capitals/models/continent.dart';

class NorthAmericaPage extends StatelessWidget {
  const NorthAmericaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBody,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text(
          'Түндүк Америка мамлекеттерине кош келиңиз',
          style: AppBarTextTextStyle.appBarTitleTextStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            padding: const EdgeInsets.only(right: 15.0),
          ),
        ],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          children: [
            const Divider(
              height: 1,
              color: Colors.yellow,
              indent: 10,
              endIndent: 10,
              thickness: 0.0,
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: northAmericaCountriesList.length,
                  itemBuilder: (itemBuilder, index) {
                    final itemNorthAmerica = northAmericaCountriesList[index];
                    return Padding(
                      padding: const EdgeInsets.only(
                            top: 10,),
                      child: Card(
                        color: AppColors.cardColor,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              itemNorthAmerica.nameNorthAmerica,
                              style:
                                  CountriesNameTextStyle.countriesNameTextStyle,
                            ),
                            Expanded(
                              child: SizedBox(
                                  height: 150,
                                  width: 100,
                                  child: Image.asset(
                                      'assets/icons/continents/${itemNorthAmerica.imageNorthAmerica}.png')),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
