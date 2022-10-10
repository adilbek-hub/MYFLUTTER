import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 13, 41, 41),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'ТАПШЫРМА-8',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.yellow,
                    backgroundImage: AssetImage(
                        'assets/images/photo_2022-08-10_17-25-00.jpg'),
                  ),
                  const SizedBox(width: 20.0),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/photo_2022-08-10_17-25-00.jpg',
                      width: 70,
                      height: 70,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Kurmanbek uulu Adilbek',
                // style: TextStyle(
                //     color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                style: GoogleFonts.lobster(color: Colors.white, fontSize: 40),
              ),
              Text(
                'Flutter DEVELOPER',
                // style: TextStyle(
                //     color: Color.fromARGB(255, 188, 230, 235), fontSize: 25),
                style: GoogleFonts.hind(
                    // Гугл фонтс пакетинен хинт тамганын стилин алуу
                    color: Color.fromARGB(255, 188, 230, 235),
                    fontSize: 25),
              ),
              const Divider(
                // Делитель = Бөлүүчү сызык
                color: Color.fromARGB(255, 26, 110, 71),
                height: 20,
                thickness: 0.5, // сызыкты ичкертип жана калыңдатуучу
                indent: 150, // отступ = Чегинүү
                endIndent: 150, // Конец отступа = Аяккы чегинүү
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  initialValue: '+996 999 29 12 10',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 31, 100, 108),
                    fontSize: 20,
                  ),
                  //Текст талаасы
                  decoration: /*жасалгалоо*/ InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Color.fromARGB(255, 31, 100, 108),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20.0,
                    ), // Filledти чоңойтуу үчүн колдонулат
                  ), //InputDecoration = Киргизүү жасалгасы //decoration: = жасалгалоо
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 31, 100, 108),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                  ),
                  initialValue: 'adilbek.kurmanbekuulu.kk@gmail.com',
                  style: TextStyle(
                      color: Color.fromARGB(255, 31, 100, 108), fontSize: 20.0),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  side: const BorderSide(
                    width: 1.5,
                    color: Colors.white,
                    style: BorderStyle.solid,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Enter',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
