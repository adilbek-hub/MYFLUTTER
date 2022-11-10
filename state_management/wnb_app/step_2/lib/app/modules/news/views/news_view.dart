import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/news_controller.dart';

class NewsView extends GetView<NewsController> {
  NewsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctr = controller;
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'NewsView is working ${ctr.count},${ctr.news.value?.articles.length}',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
