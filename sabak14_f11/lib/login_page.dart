import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sabak14_f11/home_page.dart';

import 'model.dart';

final students = <Student>[
  Nurzat,
  Adilbek,
  Amantur,
  Bektur
]; // Studentke students attuu list dayardap alabyz. Listtin ichine named constructordun atyn jazabyz
const snackBar = SnackBar(
  content: Text('Sizdin login je porol tuura emes'),
);

/// локальный фотолор менен иштөө
/// Assets
/// Kadam 1: Project papkaga assets dgen papka koshobuz
/// assets papkasyna images degen papka achabyz
/// Package: Пакет
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _disable = false;
  String? _phone;
  String? _email;
  void isActiver() {
    if (_phone != null && _email != null) {
      if (_phone!.isEmpty || _email!.isEmpty) {
        _disable = false;
      }
    } else {
      _disable = true;
    }
    // print(_phone);
    // print(_email);
    // print(_disable);
    setState(() {});
  }
  void main(List<String> arguments) {
    controlPhoneEmail('Dont Have in Amantur',
        'Dont Have in Amantur'); //  for menen ishtegen controlPhoneEmail functiondu consolgo chygaruu uchun mainge berebiz.
  }

//Bilebiz biz list menen ishtep atabyz. phone menen email listtin ichindegi ar bir modeldi teksherip chygysh uchun sicl for menen functiondo ishtybiz.
  void controlPhoneEmail(String phone, String email) {
    // аргументтин аталышы phone email.
    for (final Student in students) {
      //final sossuz berip Studenttin ichindegi  studentstegi namedi consolgo chygar.
      if (phone == Student.phone && email == Student.email) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(Student),
          ),
        );
        break; // tuura tapsa sikldy toktotuu uchun break koldonobuz.
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            snackBar); // Snakbar koyuu uchun ScaffoldMessage berip snackBardy taanytuu uchun listtin aastyna snackbar berebiz.
      }
    }
  }

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
                    backgroundImage: AssetImage('assets/images/NewTux.svg.png'),
                  ),
                  const SizedBox(width: 30),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/pingvin.jpg'),
                      ),
                    ),
                    child: const SizedBox(
                      height: 70,
                      width: 70,
                    ),
                  ),
                  const SizedBox(width: 30),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/images/pripoda.webp',
                      width: 70,
                      height: 70,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Text(
                'Kurs 8',
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
                    // initialValue: '+996 557 106 446',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 6, 102, 80),
                      fontSize: 20,
                    ),
                    onChanged: (String? phone) {
                      _phone = phone;
                      isActiver();
                      //   log('onChanged phone: $phone');
                      //   log('State _phone: $_phone');
                    },
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'phone number',
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

              /// Decaration
              SizedBox(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    // initialValue: 'alybaevturat@gmail.com',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 6, 102, 80),
                      fontSize: 20,
                    ),
                    onChanged: (String? email) {
                      _email = email;
                      isActiver();
                      // log('onChanged email: $email');
                      // log('State _email: $_email');
                    },
                    decoration: const InputDecoration(
                      hintText: 'email address',
                      filled: true, // emnege ak on ochup atat false kylsak ya?
                      fillColor: Colors.white,
                      isDense: true, // bul emnege
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
              const SizedBox(height: 20),
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
                onPressed: _disable
                    ? () {
                        if (_phone != null && _email != null) {
                          controlPhoneEmail(_phone!,
                              _email!); // !belgisi men maani berip koydum
                        }
                      }
                    : null,
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

/// isActive ? () {} : null,