import 'package:flutter/material.dart';
import 'user_data.dart';
import 'user_model.dart';
// <> generic => Белгилүү тип. Мисалы generic ти листке берсек болот. Себеби сен
//листсин бирок ичиндеги элементтер User аттуу класстын аты болсун.
// Дагы бир мисал. (final List<int> san = [1,2,3,4,5,6,1.3,2.5,4.5];) san аттуу
//листке <int> генерациясын берип койсок анда int тибиндеги сандар генерация болот
//дагы калган  1.3,2.5,4.5 double тибиндеги бөлчөк сандар ката берип калат.
//Ошондой эле Генерациядагы логикада  <User> атту generic User классынын касиеттерин
//гана окуп берет.

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Adilbek'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: users.length,
        itemBuilder: (context, index) {
          // print(index);
          // print(users[index].name);
          final user = users[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(user.profile),
            ),
            title: Text(user.name),
            subtitle: Text('${user.work} ${user.year} Jashta'),
            trailing: Icon(Icons.electric_bike),
          );
        },
        // body: Column(
        //   children: [
        //     ListTile(
        //       // listTile түзүп ичине сурот Атынызды, Жумушунузду чагылдырсаныз болот.
        //       leading: CircleAvatar(
        //         // leading: Баштапкы көрүнүшкө кандайдыр бир нерсе коюуу.
        //         // CircleAvatar суротту тоголок түрүндө коюуу үчүн колдонулат.
        //         backgroundImage: NetworkImage(
        //             'https://picsum.photos/200/300'), //backgroundImage: CircleAvatar дын
        //         // ичинде орун алып сурот коюууга колдонулат.
        //         //NetworkImage бул сайт аркылуу коюла турган суротко колдонулат.
        //       ),
        //       title:
        //           Text('Adilbek Kurmanbek uulu'), //аталышы. Мисалы Текст коюуу.
        //       subtitle: Text(
        //           'Flutter Developer'), // Аталыштын бир түрү. Текс Bold суз Боз өңдө жазылат.
        //       trailing: Icon(Icons
        //           .electric_bike), //trailing: арткы көрүнүшкө кандайдыр бир нерсе коюуу.
        //     ),
        //     ListTile(
        //       // listTile түзүп ичине сурот Атынызды, Жумушунузду чагылдырсаныз болот.
        //       leading: CircleAvatar(
        //         // leading: Баштапкы көрүнүшкө кандайдыр бир нерсе коюуу.
        //         // CircleAvatar суротту тоголок түрүндө коюуу үчүн колдонулат.
        //         backgroundImage: NetworkImage(
        //             'https://picsum.photos/200/300'), //backgroundImage: CircleAvatar дын
        //         // ичинде орун алып сурот коюууга колдонулат.
        //       ),
        //       title: Text('Nura Usen kyzy'), //аталышы. Мисалы Текст коюуу.
        //       subtitle: Text(
        //           'Flutter Developer'), //Аталыштын бир түрү. Текс Bold суз Боз өңдө жазылат.
        //       trailing: Icon(Icons
        //           .baby_changing_station_outlined), //trailing: арткы көрүнүшкө кандайдыр бир нерсе коюуу.
        //     ),
        //     ListTile(
        //       // listTile түзүп ичине сурот Атынызды, Жумушунузду чагылдырсаныз болот.
        //       leading: CircleAvatar(
        //         // leading: Баштапкы көрүнүшкө кандайдыр бир нерсе коюуу.
        //         // CircleAvatar суротту тоголок түрүндө коюуу үчүн колдонулат.
        //         backgroundImage: NetworkImage(
        //             'https://picsum.photos/200/300'), //backgroundImage: CircleAvatar дын
        //         // ичинде орун алып сурот коюууга колдонулат.
        //       ),
        //       title: Text(
        //           'Kurmanbekov Amantur Adilbekovich'), //аталышы. Мисалы Текст коюуу.
        //       subtitle: Text(
        //           'Baby'), //Аталыштын бир түрү. Текс Bold суз Боз өңдө жазылат.
        //       trailing: Icon(Icons
        //           .back_hand), //trailing: арткы көрүнүшкө кандайдыр бир нерсе коюуу.
        //     ),
        //     ListTile(
        //       // listTile түзүп ичине сурот Атынызды, Жумушунузду чагылдырсаныз болот.
        //       leading: CircleAvatar(
        //         // leading: Баштапкы көрүнүшкө кандайдыр бир нерсе коюуу.
        //         // CircleAvatar суротту тоголок түрүндө коюуу үчүн колдонулат.
        //         backgroundImage: NetworkImage(
        //             'https://picsum.photos/200/300'), //backgroundImage: CircleAvatar дын
        //         // ичинде орун алып сурот коюууга колдонулат.
        //       ),
        //       title: Text(
        //           'Kurmanbekov Bektur Adilbekovich'), //аталышы. Мисалы Текст коюуу.
        //       subtitle: Text(
        //           'Baby'), //Аталыштын бир түрү. Текс Bold суз Боз өңдө жазылат.
        //       trailing: Icon(Icons
        //           .bedroom_baby), //trailing: арткы көрүнүшкө кандайдыр бир нерсе коюуу.
        //     ),
        //     ListTile(
        //       leading: CircleAvatar(
        //         backgroundImage: NetworkImage('https://picsum.photos/200/300'),
        //       ),
        //       title: Text('Asanbekov Kurmanbek'),
        //       subtitle: Text('Driver'),
        //       trailing: Icon(Icons.drive_eta),
        //     ),
        //     ListTile(
        //       leading: CircleAvatar(
        //         backgroundImage: NetworkImage('https://picsum.photos/200/300'),
        //       ),
        //       title: Text('Asanbekov Almaz Kurmanbekovich'),
        //       subtitle: Text('Bartender'),
        //       trailing: Icon(Icons.phone_enabled_rounded),
        //     ),
        //     ListTile(
        //       leading: CircleAvatar(
        //         backgroundImage: NetworkImage('https://picsum.photos/200/300'),
        //       ),
        //       title: Text('Nurzat Kurmanbek kyzy'),
        //       subtitle: Text('Student'),
        //       trailing: Icon(Icons.cake),
        //     ),
        //     ListTile(
        //       leading: CircleAvatar(
        //         backgroundImage: NetworkImage('https://picsum.photos/200/300'),
        //       ),
        //       title: Text('Kasymbekov Ysen'),
        //       subtitle: Text('Businessmen'),
        //       trailing: Icon(Icons.business),
        //     ),
        //     ListTile(
        //       leading: CircleAvatar(
        //         backgroundImage: NetworkImage('https://picsum.photos/200/300'),
        //       ),
        //       title: Text('Munara Apa'),
        //       subtitle: Text('Business Women'),
        //       trailing: Icon(Icons.business_center),
        //     ),
        //   ],
      ),
    );
  }
}
