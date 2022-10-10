import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEC106),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
          statusBarColor: const Color(0xff751E85),
        ),
        shape: const Border(
          // AppBarдын астынкы боттомуна сызыкча койуу
          bottom: BorderSide(color: Color.fromARGB(255, 174, 138, 9), width: 3),
        ),
        elevation: 6,
        /* ... */
        centerTitle: true,
        backgroundColor: const Color(0xffFEC106),
        title: const Text(
          'ТАПШЫРМА-03',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        // Экрандагы нерсени ортого койот.
        child: Column(
          // Нерселер үчүн бир мамыча/столбец
          mainAxisAlignment: MainAxisAlignment
              .center, // колоннадагы нерселерди экрандын ортосуна койуп берет.
          children: [
            Text(
              'I`m Rich',
              style: GoogleFonts.sofia(
                color: Colors.black,
                fontSize: 48,
                fontWeight: FontWeight.w400,
                height: 2.3,
              ),
            ),
            Text(
              'I`m Rich',
              style: GoogleFonts.pacifico(
                  color: const Color(0xffF63836),
                  fontSize: 48,
                  fontWeight: FontWeight.w400,
                  height: 1),
            ),
            Image.asset(
              'assets/images/brillant.png',
              height: 180,
              width: 180,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('1-бет'),
            ),
            //   Expanded(child: Column(children: [  const Text(
            //       'I`m Rich'), // колоннага караштуу чилдрендин ичинде жайгашкан текст. Бул текст колоннанын ортосунда болот. Анкени Негизги окту тегиздөө (борбордо)/ mainAxisAlignment: MainAxisAlignment.center
            //   const Text(
            //       'I`m Rich'), ],),),

            // // колоннага караштуу чилдрендин ичинде жайгашкан текст. Бул текст колоннанын ортосунда болот. Анкени Негизги окту тегиздөө (борбордо)/ mainAxisAlignment: MainAxisAlignment.center
            //   Expanded( // Нерселерди Экрандын размерине бөлүшүп орун алат.
            //       child: Image.asset(
            //           'assets/images/brillant.png')), // локальный сурот
            //   Expanded(  // Нерселерди Экрандын размерине бөлүшүп орун алат.
            //       child: Image.asset(
            //           'assets/images/ПоварПингвин.png')), // локальный сурот
            //   Expanded( // Нерселерди Экрандын размерине бөлүшүп орун алат.
            //       child: Image.asset(
            //           'assets/icons/NewTux.svg.png')), // локальный сурот

            // Экранды Expanded аркылуу теңме тең бөлүп алуу.
            //мисалы:

            // Expanded(
            //   flex:
            //       2, // Кара светти көк жана кызыл светтердин размеринен эки эсе өзүнө чоңойтуп алат.
            //   child: Container(
            //     color: Colors.black,
            //   ),
            // ),
            // Expanded(
            //   flex: 3, // көк светти жанындагы светтерден 3 эсе чөңойтуп алат.
            //   child: Container(
            //     color: Colors.blue,
            //   ),
            // ),
            // Expanded(
            //   flex: 5, // Эң кичинесинен 5 эсе
            //   child: Container(
            //     color: Colors.red,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
