class Student {
  // Student attuu class berip alabyz
  // final bul bir jolu berem, kiyin any almashtyrbaym.
  final int id;
  final String name; // namege String modelin berem
  final String
      lastName; //lastNamege String modelin jana (final) fomiliany ozgortpoo uchun bir gana berem
  int age; // modeli int aty age
  final String?
      address; // addressti ozgortpoo uchun final jana modeli int null bolo alat aty address
  ///gender is 1 => famele: 2 => male (dart uch sleshti astynky genderge tiesheluu document dep tushunot)
  final int gender; // genderdi ozgortpoo uchun final jana modeli int aty gender
  final String?
      jeri; // jerin ozgortpoo uchun final jana modeli null bolo aluuchu String   aty jeri
  /// marriage is true => ui buloolu: false => boydok
  bool? marriage; // modeli boolean aga marriage (dart uch sleshti astynky genderge tiesheluu document dep tushunot)
  String phone; // modeli String aty phone
  String email; // modeli String aty email
  // Contructor
  Student(
      {required this.id, // eki adamdyn aty okshosh uchurda id arkyluu airmalaybyz
      required this.name, // Constructor namedi talap kylat
      required this.lastName, // Constructor lastNamedi talap kylat
      required this.age, // // Constructor agedi talap kylat
      this.address, // Constructor addressti talap kylbayt sebebi kardar addresin jazbay null kyla alat
      required this.gender, // Constructor genderdi talap kylat
      this.jeri, // Constructor jerdi talap kylbayt sebebi kardar jerin null kyla alat
      this.marriage, // Constructor marriagedi talap kylbayt sebebi kardar semyasyn null kyla alat
      required this.phone,
      required this.email});
}

//named constructor
final Nurzat = Student(
  id: 1, //required berilgen oshonduktan ozu chygat
  name: 'Nurzat', //required berilgen oshonduktan ozu chygat
  lastName: 'Kasymbekova', //required berilgen oshonduktan ozu chygat
  age: 21, //required berilgen oshonduktan ozu chygat
  gender: 1, //required berilgen oshonduktan ozu chygat
  phone: '+996123457874', //required berilgen oshonduktan ozu chygat
  email: 'nura.usenova.kk@gmail.com', //required berilgen oshonduktan ozu chygat
  address:
      'Bishkek', //required berilgen emes oshonduktan kolgo jazabyz kaalasam berem kaalasam berbeym
  jeri:
      'Kyrgyz', //required berilgen emes oshonduktan kolgo jazabyz kaalasam berem kaalasam berbeym
  marriage:
      true, //required berilgen emes oshonduktan kolgo jazabyz kaalasam berem kaalasam berbeym
);
final Adilbek = Student(
    id: 2, //required 
    name: 'Adilbek',//required 
    lastName: 'Kurmanbek uulu',//required 
    age: 30,//required 
    gender: 2,//required 
    phone: '+996999291245',//required 
    email: 'adilbek.kurmanbekuulu.kk@gmail.com',//required 
    address: 'Jumgal',//?null
    jeri: 'kyrgyz',//?null
    marriage: true,//?null
    );
final Amantur = Student(
    id: 3,
    name: 'Amantur',//required 
    lastName: 'Kurmanbekov',//required 
    age: 3,//required 
    gender: 2,//required 
    phone: 'Dont Have in Amantur',//required 
    email: 'Dont Have in Amantur',//required 
    address: 'Antonovka',//?null
    jeri: 'kyrgyz',//?null
    marriage: false,//?null
    );
final Bektur = Student(
    id: 4,//required 
    name: 'Bektur',//required 
    lastName: 'Kurmanbekov',//required 
    age: 1,//required 
    gender: 2,//required 
    phone: 'Dont Have',//required 
    email: 'Dont Have', //required 
    address: 'Antonovka', //?null
    jeri: 'kyrgyz',//?null
    marriage: false,//?null
    );
