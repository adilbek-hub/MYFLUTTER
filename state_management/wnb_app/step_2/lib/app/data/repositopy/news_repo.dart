import 'package:dio/dio.dart';
import 'package:step_2/app/constants/api_const.dart';
import 'package:step_2/app/data/models/news_model.dart';

class NewsRepo {
  // dio je http menen apiConst.newsApi ge baryp data alyp keluu
  // kelgen datany news modeline modeldep beruu

  final dio = Dio();

  Future<News?> getNews() async {
    final response = await dio.get(ApiConst.apiNews);
    if (response.statusCode == 200) {
      final news = News.fromJson(response.data);
      return news;
    } else {
      return null;
    }
  }
}
