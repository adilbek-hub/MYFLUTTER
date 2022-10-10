class oblast {
  String aty;
  int raionuK;
  int shaaryK;
  List raionununN;
  List shaaryN;

  oblast({
    required this.aty,
    required this.raionuK,
    required this.shaaryK,
    required this.raionununN,
    required this.shaaryN,
  });

  void taanysh() {
    print(
        'Мен $aty облусумун,менде $raionuK район, $shaaryK шаар бар. Райондор : $raionununN , Шаарлар: $shaaryN');
  }

  void kosh() {
    print('Мен $aty облусу Кыргызстандын 7 облусунун биримин');
  }
}

class chui extends oblast {
  chui({
    required super.aty,
    required super.raionuK,
    required super.shaaryK,
    required super.raionununN,
    required super.shaaryN,
  });
}

class osh extends oblast {
  osh({
    required super.aty,
    required super.raionuK,
    required super.shaaryK,
    required super.raionununN,
    required super.shaaryN,
  });
}

class naryn extends oblast {
  naryn({
    required super.aty,
    required super.raionuK,
    required super.shaaryK,
    required super.raionununN,
    required super.shaaryN,
  });
}

class ysykkol extends oblast {
  ysykkol({
    required super.aty,
    required super.raionuK,
    required super.shaaryK,
    required super.raionununN,
    required super.shaaryN,
  });

  @override
  void kosh() {
    print('Мен $aty облусу Кыргызстандын  берметимин жана 7 облусунун биримин');
  }
}

class batken extends oblast {
  batken({
    required super.aty,
    required super.raionuK,
    required super.shaaryK,
    required super.raionununN,
    required super.shaaryN,
  });
}

class talas extends oblast {
  talas({
    required super.aty,
    required super.raionuK,
    required super.shaaryK,
    required super.raionununN,
    required super.shaaryN,
  });
}

class jalalabad extends oblast {
  jalalabad({
    required super.aty,
    required super.raionuK,
    required super.shaaryK,
    required super.raionununN,
    required super.shaaryN,
  });
}

void main() {
  chui Chui = chui(
    aty: 'Чуй',
    raionuK: 8,
    shaaryK: 4,
    raionununN: [
      'Аламедин',
      "Жайыл",
      "Панфилов",
      "Москва",
      "Чуй",
      "Сокулук",
      "Ысык-Ата"
    ],
    shaaryN: ["Токмок", "Кара-Балта", "Кант", "Шопоков"],
  );

  osh Osh = osh(
    aty: 'Ош',
    raionuK: 7,
    shaaryK: 3,
    raionununN: [
      "Алай",
      "Араван",
      "Кара-Кулжа",
      "Кара-Суу",
      "Ноокат",
      "Озгон",
      "Чон Алай"
    ],
    shaaryN: ["Ош", "Кара-Суу", "Озгон"],
  );

  naryn Naryn = naryn(
    aty: 'Нарын',
    raionuK: 5,
    shaaryK: 1,
    raionununN: [
      "Ак-Талаа",
      "Ат-Башы",
      "Жумгал",
      "Кочкор",
      "Нарын",
    ],
    shaaryN: ["Нарын"],
  );

  ysykkol Ysykkol = ysykkol(
    aty: 'Ысык-Кол',
    raionuK: 5,
    shaaryK: 3,
    raionununN: [
      "Ак Суу",
      "Жети-Огуз",
      "Тон",
      "Туп",
      "Ысык-Кол",
    ],
    shaaryN: ["Балыкчы", "Каракол", "Чолпон-Ата"],
  );

  batken Batken = batken(
    aty: 'Баткен',
    raionuK: 3,
    shaaryK: 6,
    raionununN: [
      "Баткен",
      "Кадамжай",
      "Лейлек",
    ],
    shaaryN: [
      "Баткен",
      "Кызыл-Кыя",
      "Сулукту",
      "Разаков",
      "Айдаркен",
      "Кадамжай"
    ],
  );

  talas Talas = talas(
    aty: 'Талас',
    raionuK: 8,
    shaaryK: 6,
    raionununN: [
      "Бакай-Ата",
      "Кара-Буура",
      "Манас",
      "Талас",
    ],
    shaaryN: ["Талас"],
  );

  jalalabad JA = jalalabad(
    aty: 'Жалал-Абад',
    raionuK: 8,
    shaaryK: 5,
    raionununN: [
      "Аксы",
      "Ала-Бука",
      "Базар-Коргон",
      "Ноокен",
      "Сузак",
      "Тогуз-Торо",
      "Токтогул"
          "Чаткал"
    ],
    shaaryN: [
      "Таш-Комур",
      "Майлуу-Суу",
      "Кара-Кол",
      "Кок-Жангак",
      "Жалал-Абад"
    ],
  );

  Chui.taanysh();
  Chui.kosh();
  Osh.taanysh();
  Osh.kosh();
  Naryn.taanysh();
  Naryn.kosh();
  Ysykkol.taanysh();
  Ysykkol.kosh();
  Batken.taanysh();
  Batken.kosh();
  Talas.taanysh();
  Talas.kosh();
  JA.taanysh();
  JA.kosh();
}
