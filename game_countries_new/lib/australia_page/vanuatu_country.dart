import 'package:flutter/material.dart';
import 'package:game_countries_new/australia_page/vanuatu_class.dart';
import 'package:game_countries_new/constants/app_color.dart';
import 'package:game_countries_new/constants/text_style.dart';

class VanuatyCountry extends StatefulWidget {
  const VanuatyCountry({super.key});

  @override
  State<VanuatyCountry> createState() => _VanuatyCountryState();
}

class _VanuatyCountryState extends State<VanuatyCountry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundCountriesBody,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        title: const Text(
          'Вануату мамлекети',
          textAlign: TextAlign.center,
          style: CountriesNameTextStyle.countriesNameTextStyle,
        ),
      ),
      body: Column(
        children: [
          const Divider(
              height: 1,
              color: Colors.yellow,
              indent: 10,
              endIndent: 10,
              thickness: 0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Image.asset(
                      'assets/images/about_countries/VanuatuCoatOfArms.png',
                      fit: BoxFit.cover,
                      height: 117,
                    )),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: Image.asset(
                      'assets/images/about_countries/VanuatuFlag.png',
                      fit: BoxFit.cover,
                      height: 117,
                    )),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/texi_page_icons/iconW.png',
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'assets/icons/texi_page_icons/iconWorld.png',
                      height: 30,
                      width: 30,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                        child: Column(
                      children: const [
                        Text(
                          'Вануату',
                          style: AustraliaNameTextStyle.australiaName,
                        ),
                        Text('Vanuatu',
                            style: AustraliaLatinNameTextStyle.australiaName)
                      ],
                    )),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Divider(
                    height: 1,
                    color: Colors.yellow,
                    indent: 0,
                    endIndent: 0,
                    thickness: 0),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: const [
                    Expanded(
                        child: TextAboutCountryVanuatu(
                      textQuastion: 'Борбору',
                      textVanuatu: 'Порт-Вила',
                    )),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                        child: TextAboutCountryVanuatu(
                      textQuastion: 'Тили',
                      textVanuatu: 'Француз, Англис',
                    )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Expanded(
                        child: TextAboutCountryVanuatu(
                      textQuastion: 'Аянты км²',
                      textVanuatu: '12 199 км²',
                    )),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                        child: TextAboutCountryVanuatu(
                      textQuastion: 'Калкынын саны',
                      textVanuatu: '307 150',
                    )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Expanded(
                        child: TextAboutCountryVanuatu(
                      textQuastion: 'Интернет домени',
                      textVanuatu: '	.vu',
                    )),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                        child: TextAboutCountryVanuatu(
                      textQuastion: 'Телефон коду',
                      textVanuatu: '+678',
                    )),
                  ],
                ),
                const SizedBox(height: 20,),
                Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Президент',
                          style: AustraliaSmallTextStyle.australiaSmallText,
                        ),
                        Text(
                          'Таллис Мозес',
                          style: AustraliaBigTextStyle.australiaBigText,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}