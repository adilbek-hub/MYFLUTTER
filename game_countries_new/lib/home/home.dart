import 'package:flutter/material.dart';
import 'package:game_countries_new/constants/app_color.dart';
import 'package:game_countries_new/constants/app_text.dart';
import 'package:game_countries_new/euro_page/europe_page.dart';
import 'package:game_countries_new/models/continent.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text(
          AppText.appBarText,
          style: TextStyle(color: AppColors.appBarTextColor),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: AppColors.blue,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.black,
              ))
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          const Divider(
              height: 5,
              color: Colors.black,
              indent: 30,
              endIndent: 30,
              thickness: 1.3),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(15),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: continentsList.length,
              itemBuilder: (buildContext, index) {
                final item = continentsList[index];
                return Card(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        item.name,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: InkWell(
                          borderRadius: BorderRadius.circular(100),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EuropePage()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset(
                                'assets/icons/continents/${item.image}.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
