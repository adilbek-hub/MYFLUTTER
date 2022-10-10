import 'package:sabak14_f11/model.dart';
final students = <Student>[
  Nurzat,
  Adilbek,
  Amantur,
  Bektur
]; // Studentke students attuu list dayardap alabyz. Listtin ichine named constructordun atyn jazabyz

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
      print('Kush kelipsing: ${Student.name}');
      break; // tuura tapsa sikldy toktotuu uchun break koldonobuz.
    } else {
      print('Address tuura emes');
    }
  }
}