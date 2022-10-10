import 'package:flutter/material.dart';
import 'package:game_countries_new/constants/app_color.dart';
import 'package:game_countries_new/constants/text_style.dart';
import 'package:game_countries_new/models/continent.dart';

class SouthAmericaPage extends StatelessWidget {
  const SouthAmericaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBody,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text(
          'Түштүк Америка мамлекеттерине кош келиңиз',
          style: AppBarTextTextStyle.appBarTitleTextStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 15),
          ),
        ],
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
                thickness: 0),
                const SizedBox(height: 10,),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: southAmericaCountriesList.length,
                  itemBuilder: (BuildContext, index) {
                    final itemSouthAmerica = southAmericaCountriesList[index];
                    return Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Card(
                        color: AppColors.cardColor,
                        child: Column(
                          children: [
                            const SizedBox(height: 5,),
                            Text(itemSouthAmerica.name, style: CountriesNameTextStyle.countriesNameTextStyle,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/icons/continents/${itemSouthAmerica.image}.png'),
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