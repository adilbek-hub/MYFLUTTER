// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sabak10_f7/my_home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  String login = '';
  String password = '';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginPage'),
      ),
      body: 
      Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              onChanged: (log) {
                login = log;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Your Login',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              onChanged: (pas) {
                password = pas;
                // print(password);
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (login == 'adilbek' && password == 'adilbek') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Logininiz je parolunuz tuura emes'),
                  ),
                );
              }
            },
            child: Text('Enter'),
          ),
        ],
      ),
    );
  }
}
