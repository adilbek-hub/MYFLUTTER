import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sabak12_f9/home_page.dart';
// import 'package:sabak12_f9/home_page.dart';

/// локальный фотолор менен иштөө
/// Assets

/// Kadam 1: Project papkaga assets dgen papka koshobuz
/// assets papkasyna images degen papka achabyz

/// Package: Пакет

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  String PhoneNum = '';
  String Email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 102, 80),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'ТАПШЫРМА - 04',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.amber,
                    backgroundImage: AssetImage('assets/images/pripoda.webp'),
                  ),
                  const SizedBox(width: 30),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/shar.jpeg'),
                      ),
                    ),
                    child: const SizedBox(
                      height: 70,
                      width: 70,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                'Adilbek Kurmanbek uulu',
                style: GoogleFonts.pacifico(color: Colors.white, fontSize: 40),
              ),
              Text(
                'Flutter DEVELOPER',
                style: GoogleFonts.prompt(
                  color: const Color.fromARGB(255, 167, 220, 208),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 124, 203, 185),
                height: 20,
                thickness: 1,
                indent: 120,
                endIndent: 120,
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    initialValue: '+996 550 000 000',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 6, 102, 80),
                      fontSize: 20,
                    ),
                    onChanged: (num) {
                      PhoneNum = num;
                    },
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      prefixIcon: Icon(
                        Icons.phone,
                        size: 25,
                        color: Color.fromARGB(255, 6, 102, 80),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    initialValue: 'AdilbekComputer@gmail.com',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 6, 102, 80),
                      fontSize: 20,
                    ),
                    onChanged: (mail) {
                      Email = mail;
                    },
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      prefixIcon: Icon(
                        Icons.email,
                        size: 25,
                        color: Color.fromARGB(255, 6, 102, 80),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20), // Касаемо между интервалами
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  side: const BorderSide(
                    width: 1.5,
                    color: Colors.white,
                    style: BorderStyle.solid,
                  ),
                ),
                onPressed: () {
                  if (PhoneNum == '0999291210' && Email == 'Adilbek@') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  } else if (PhoneNum != '0999291210' && Email != 'Adilbek@') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Телефон номериңиз жана электрондук почтаңыз туура эмес!',
                        ),
                      ),
                    );
                  } else if (PhoneNum != '0999291210') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Сиздин телефон номериңиз туура эмес!',
                        ),
                      ),
                    );
                  } else if (Email != 'Adilbek@') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Сиздин электрондук почтаңыз туура эмес!',
                        ),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'хахахахахаха',
                        ),
                      ),
                    );
                  }
                },
                child: const Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
