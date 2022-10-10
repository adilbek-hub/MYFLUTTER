import 'package:flutter/material.dart';
import 'package:game_about_capitals/constants/app_color.dart';
import 'package:game_about_capitals/constants/text_style.dart';
import 'package:game_about_capitals/models/continent.dart';

class AfricaPage extends StatelessWidget {
  const AfricaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBody,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text(
          'Африка мамлекеттерине кош келиңиз',
          style: TextStyle(
              color: Color.fromARGB(255, 249, 247, 247),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            padding: const EdgeInsets.only(right: 15),
          ),
        ],
        elevation: 0,
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
              thickness: 0.0,
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: asiaCountriesList.length,
                  itemBuilder: (BuildContext, index) {
                    final itemAfrica = africaCountriesList[index];
                    return Padding(
                      padding: const EdgeInsets.only(
                          bottom: 5, top: 10, left: 5, right: 5),
                      child: Card(
                        color: AppColors.cardColor,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            // Size(width, height)
                            Text(
                              itemAfrica.nameAfrica,
                              style:
                                  CountriesNameTextStyle.countriesNameTextStyle,
                            ),
                            //Expanded menen glagty gipkii kyldym
                            Expanded(
                              // SizedBox menen flagty kichireyttip aldym
                              child: SizedBox(
                                height: 150,
                                width: 100,
                                child: Image.asset(
                                    'assets/icons/continents/${itemAfrica.imageAfrica}.png'),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
