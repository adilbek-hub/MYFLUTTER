import 'package:flutter/material.dart';
import 'package:game_countries_new/australia_page/australia_class.dart';
import 'package:game_countries_new/constants/app_color.dart';
import 'package:game_countries_new/constants/text_style.dart';

class Australia extends StatelessWidget {
  const Australia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundCountriesBody,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          'Австралия мамлекети',
          textAlign: TextAlign.center,
          style: AppBarTextTextStyle.appBarTitleTextStyle,
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Divider(
                  height: 1,
                  color: Colors.yellow,
                  indent: 10,
                  endIndent: 10,
                  thickness: 0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Card(
                    child: Image.asset(
                      'assets/images/about_countries/CoutOfArmsOfAustralia.png',
                      fit: BoxFit.cover,
                    ),
                  )),
                  Expanded(
                    child: Card(
                      child: Image.asset(
                        'assets/images/about_countries/australiaFlag.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(50),
                          highlightColor: Color.fromARGB(255, 217, 68, 14).withOpacity(0.9),
                          splashColor: Color.fromARGB(255, 222, 229, 25).withOpacity(0.9),
                          onTap: () {
                          
                        },
                          child: Image.asset(
                            'assets/icons/texi_page_icons/iconW.png',
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(50),
                          highlightColor: Color.fromARGB(255, 217, 68, 14).withOpacity(0.9),
                          splashColor: Color.fromARGB(255, 222, 229, 25).withOpacity(0.9),
                          onTap: () {
                          
                        },
                          child: Image.asset(
                            'assets/icons/texi_page_icons/iconWorld.png',
                            color: Colors.white,
                            height: 30,
                            width: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(
                              height: 19,
                              child: Text(
                                'Австралия',
                                style: AustraliaNameTextStyle.australiaName,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                              child: Text(
                                'Australia',
                                style:
                                    AustraliaLatinNameTextStyle.australiaName,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Divider(
                        height: 1,
                        color: Colors.yellow,
                        indent: 10,
                        endIndent: 10,
                        thickness: 0),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Expanded(
                            child: TextAboutCountry(
                          smalltext: 'Борбору',
                          bigtext: 'Канберра',
                        )),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                            child: TextAboutCountry(
                          smalltext: 'Тили',
                          bigtext: 'Англис',
                        )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Expanded(
                          child: TextAboutCountry(
                            smalltext: 'Аянты км²',
                            bigtext: '7 692 024 км²',
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: TextAboutCountry(
                            smalltext: 'Калкынын саны',
                            bigtext: '26 399 000',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Expanded(
                          child: TextAboutCountry(
                            smalltext: 'интернет домени',
                            bigtext: '.au',
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: TextAboutCountry(
                            smalltext: 'телефон коду',
                            bigtext: '+61',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: const [
                        TextAboutCountry(
                            bigtext: 'Скотт Джон Моррисон',
                            smalltext: ' Өлкөнүн 30-примьер министри'),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}