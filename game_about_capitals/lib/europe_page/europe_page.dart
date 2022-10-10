import 'package:flutter/material.dart';
import 'package:game_about_capitals/constants/app_color.dart';
import 'package:game_about_capitals/models/continent.dart';

class EuropePage extends StatelessWidget {
  const EuropePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBody,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            }, icon: const Icon(Icons.arrow_back_ios_new)),
        title: Container(
          width: 300,
          height: 50,
          color: Colors.red,
          child: const Text(
            'Европа мамлекеттерине кош келиңиз',
            style: TextStyle(
                color: Color.fromARGB(255, 249, 247, 247),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ))
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          const Divider(
            height: 1,
            color: Colors.yellow,
            indent: 10,
            endIndent: 10,
            thickness: 0.0,
          ),
          Expanded(
            // GridView.builderdi Expanded menen orogondo grid ishtedi. sebebi emnede.
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: europeCountriesList.length,
                itemBuilder: (BuildContext,  index) {
                  final itemEurope = europeCountriesList[index];
                  return Padding(
                    padding: const EdgeInsets.only(
                        bottom: 5, top: 5, left: 5, right: 5),
                    child: Card(color: AppColors.cardColor,
                      child: Expanded(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              itemEurope.name,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 3.0,
                            ),
                            Expanded(
                                child: InkWell(onTap: () {
                                  
                                },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                        'assets/icons/continents/${itemEurope.image}.png'),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
