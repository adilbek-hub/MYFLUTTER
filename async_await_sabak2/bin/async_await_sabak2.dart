import 'package:async_await_sabak2/async_await_sabak2.dart'
    as async_await_sabak2;
import 'package:dio/dio.dart';

void main() async {
  var dio = Dio();
  Future.delayed(Duration(seconds: 20));
  final respons = await dio.get('https://jsonplaceholder.typicode.com/posts');
  print(respons.data);
}
