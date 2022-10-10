// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('user Detail Page'),),
      body: Column(children: [
        CircleAvatar(backgroundImage: NetworkImage('https://picsum.photos/200/300'),),
      ],
      ),
    );
  }
}
